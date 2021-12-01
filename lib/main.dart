import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instar Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HelloPage());
  }
}

class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인스타클론'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/09/13/05/34/kid-6620283__480.jpg"),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '유신환',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
