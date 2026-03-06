// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extra Parameter in a Connection Setting Properties to indicate service provider specific properties
class ConnectionSettingParameterResponse {
  /// Key for the Connection Setting Parameter.
  final pulumi.Input<String>? key;
  /// Value associated with the Connection Setting Parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ConnectionSettingParameterResponse].
  /// [key] Key for the Connection Setting Parameter.
  /// [value] Value associated with the Connection Setting Parameter.
  const ConnectionSettingParameterResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ConnectionSettingParameterResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionSettingParameterResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

