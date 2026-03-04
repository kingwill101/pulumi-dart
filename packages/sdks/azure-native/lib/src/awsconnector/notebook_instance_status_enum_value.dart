// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NotebookInstanceStatusEnumValue
class NotebookInstanceStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [NotebookInstanceStatusEnumValue].
  /// [value] Property value
  NotebookInstanceStatusEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory NotebookInstanceStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceStatusEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
