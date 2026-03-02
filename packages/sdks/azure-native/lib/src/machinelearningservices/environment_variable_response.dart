// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Environment Variables for the container
class EnvironmentVariableResponse {
  /// Type of the Environment Variable. Possible values are: local - For local variable
  final pulumi.Input<String>? type;
  /// Value of the Environment variable
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [type] Type of the Environment Variable. Possible values are: local - For local variable
  /// [value] Value of the Environment variable
  EnvironmentVariableResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

