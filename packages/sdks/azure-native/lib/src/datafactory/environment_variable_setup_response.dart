// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The custom setup of setting environment variable.
class EnvironmentVariableSetupResponse {
  /// The type of custom setup.
  /// Expected value is 'EnvironmentVariableSetup'.
  final pulumi.Input<String> type;
  /// The name of the environment variable.
  final pulumi.Input<String> variableName;
  /// The value of the environment variable.
  final pulumi.Input<String> variableValue;

  /// Creates a new [EnvironmentVariableSetupResponse].
  /// [type] The type of custom setup.
  /// [variableName] The name of the environment variable.
  /// [variableValue] The value of the environment variable.
  const EnvironmentVariableSetupResponse({
    required this.type,
    required this.variableName,
    required this.variableValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'variableName': variableName,
      'variableValue': variableValue,
    };
  }

  factory EnvironmentVariableSetupResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableSetupResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
      variableValue: pulumi.Input.fromValue(map['variableValue'] as String),
    );
  }
}

