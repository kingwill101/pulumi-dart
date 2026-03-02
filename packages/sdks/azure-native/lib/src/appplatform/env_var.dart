// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Spring Apps components' environment variable.
class EnvVar {
  /// Environment variable name.
  final pulumi.Input<String>? name;
  /// secret environment variable value.
  final pulumi.Input<String>? secretValue;
  /// Non-secret environment variable value.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvVar].
  /// [name] Environment variable name.
  /// [secretValue] secret environment variable value.
  /// [value] Non-secret environment variable value.
  EnvVar({
    this.name,
    this.secretValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretValue': ?secretValue,
      'value': ?value,
    };
  }

  factory EnvVar.fromMap(Map<String, dynamic> map) {
    return EnvVar(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secretValue: map['secretValue'] == null ? null : (map['secretValue'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

