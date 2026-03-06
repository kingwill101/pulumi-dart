// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App container environment variable.
class EnvironmentVar {
  /// Environment variable name.
  final pulumi.Input<String>? name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final pulumi.Input<String>? secretRef;
  /// Non-secret environment variable value.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVar].
  /// [name] Environment variable name.
  /// [secretRef] Name of the Container App secret from which to pull the environment variable value.
  /// [value] Non-secret environment variable value.
  const EnvironmentVar({
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

  factory EnvironmentVar.fromMap(Map<String, dynamic> map) {
    return EnvironmentVar(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

