// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extra Parameter in a Connection Setting Properties to indicate service provider specific properties
class ConnectionSettingParameter {
  /// Key for the Connection Setting Parameter.
  final pulumi.Input<String>? key;

  /// Value associated with the Connection Setting Parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ConnectionSettingParameter].
  /// [key] Key for the Connection Setting Parameter.
  /// [value] Value associated with the Connection Setting Parameter.
  ConnectionSettingParameter({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory ConnectionSettingParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingParameter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
