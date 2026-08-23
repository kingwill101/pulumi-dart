// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentEnvironmentVariable {
  /// Environment variable's name or key.
  final pulumi.Input<String> name;
  /// Type of environment variable. Valid values: `PARAMETER_STORE`, `PLAINTEXT`, `SECRETS_MANAGER`.
  final pulumi.Input<String>? type;
  /// Environment variable's value.
  final pulumi.Input<String> value;

  /// Creates a new [ProjectEnvironmentEnvironmentVariable].
  /// [name] Environment variable's name or key.
  /// [type] Type of environment variable. Valid values: `PARAMETER_STORE`, `PLAINTEXT`, `SECRETS_MANAGER`.
  /// [value] Environment variable's value.
  const ProjectEnvironmentEnvironmentVariable({
    required this.name,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
      'value': value,
    };
  }

  factory ProjectEnvironmentEnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentEnvironmentVariable(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
