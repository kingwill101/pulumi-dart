// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of statusTypeEnumValue
class StatusTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StatusTypeEnumValue].
  /// [value] Property value
  StatusTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory StatusTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return StatusTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
