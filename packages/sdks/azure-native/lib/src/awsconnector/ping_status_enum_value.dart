// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PingStatusEnumValue
class PingStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PingStatusEnumValue].
  /// [value] Property value
  PingStatusEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory PingStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return PingStatusEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
