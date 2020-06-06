import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  Result(this.totalScore,this.resetHandler);

  String get resultPhrase {
    var resulText = "You did it !";
    if(totalScore <= 8 ){
      resulText = "You are innocent !";
    }else if(totalScore <= 12 ){
      resulText = "Pretty Likeable";
    }else if(totalScore <= 16 ){
      resulText = "You are strange";
    }else{
      resulText = "You are dark";
    }
    return resulText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz !'),textColor: Colors.blue,)
        ],
      ),
    );
  }
}
