// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentVariableResponse {
  /// Type of the Environment Variable. Possible values are: local - For local variable
  final pulumi.Input<String?>? type;
  /// Value of the Environment variable
  final pulumi.Input<String?>? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [type] Type of the Environment Variable. Possible values are: local - For local variable
  /// [value] Value of the Environment variable
  EnvironmentVariableResponse({
    pulumi.Input<String?>? type,
    this.value,
  }) : type = type ?? pulumi.Input.fromValue('local');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
