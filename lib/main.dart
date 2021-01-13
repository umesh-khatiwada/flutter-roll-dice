import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Homepage(),
      ),
    );

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int rollnumber = 1;
  int nextdice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Text('Rolling Dice'),
          backgroundColor: Colors.red,
        ),


        body: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rollnumber = Random().nextInt(6) + 1;
                    nextdice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rollnumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    nextdice = Random().nextInt(6) + 1;
                    rollnumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$nextdice.png'),
                ),
              ),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
