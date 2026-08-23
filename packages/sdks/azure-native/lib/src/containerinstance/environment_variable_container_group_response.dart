// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The environment variable to set within the container instance.
class EnvironmentVariableContainerGroupResponse {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// The value of the secure environment variable.
  final pulumi.Input<String>? secureValue;
  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariableContainerGroupResponse].
  /// [name] The name of the environment variable.
  /// [secureValue] The value of the secure environment variable.
  /// [value] The value of the environment variable.
  const EnvironmentVariableContainerGroupResponse({
    required this.name,
    this.secureValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'value': ?value,
    };
  }

  factory EnvironmentVariableContainerGroupResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableContainerGroupResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      secureValue: (() { final guardedValue = map['secureValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
