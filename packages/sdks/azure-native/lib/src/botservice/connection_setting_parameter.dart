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
  ConnectionSettingParameter({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ConnectionSettingParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingParameter(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

