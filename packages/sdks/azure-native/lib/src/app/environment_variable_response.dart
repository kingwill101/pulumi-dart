// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing an environment variable.
class EnvironmentVariableResponse {
  /// Environment variable name.
  final pulumi.Input<String> name;
  /// Environment variable value.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] Environment variable name.
  /// [value] Environment variable value.
  EnvironmentVariableResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

