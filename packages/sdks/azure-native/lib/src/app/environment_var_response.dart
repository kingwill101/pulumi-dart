// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App container environment variable.
class EnvironmentVarResponse {
  /// Environment variable name.
  final pulumi.Input<String>? name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final pulumi.Input<String>? secretRef;
  /// Non-secret environment variable value.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVarResponse].
  /// [name] Environment variable name.
  /// [secretRef] Name of the Container App secret from which to pull the environment variable value.
  /// [value] Non-secret environment variable value.
  EnvironmentVarResponse({
    this.name,
    this.secretRef,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
      'value': ?value,
    };
  }

  factory EnvironmentVarResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVarResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secretRef: map['secretRef'] == null ? null : (map['secretRef'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

