import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDialog extends StatelessWidget {
  const SearchDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 2,
            left: 4,
            right: 4,
            child: Card(
              child: TextFormField(
                textInputAction: TextInputAction.search,
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 13),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.grey[700],
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ),
                onFieldSubmitted: (text){
                  Navigator.of(context).pop(text);
                },
              ),
            ),
        )
      ],
    );
  }
}
