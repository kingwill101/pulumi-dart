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
  const EnvVar({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretValue: (() { final guardedValue = map['secretValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
