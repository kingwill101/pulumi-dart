// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A header to add to the WebTest.
class HeaderField {
  /// The name of the header.
  final pulumi.Input<String>? headerFieldName;

  /// The value of the header.
  final pulumi.Input<String>? headerFieldValue;

  /// Creates a new [HeaderField].
  /// [headerFieldName] The name of the header.
  /// [headerFieldValue] The value of the header.
  HeaderField({this.headerFieldName, this.headerFieldValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerFieldName': ?headerFieldName,
      'headerFieldValue': ?headerFieldValue,
    };
  }

  factory HeaderField.fromMap(Map<String, dynamic> map) {
    return HeaderField(
      headerFieldName: (() {
        final guardedValue = map['headerFieldName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      headerFieldValue: (() {
        final guardedValue = map['headerFieldValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
