// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The custom setup of setting environment variable.
class EnvironmentVariableSetup {
  /// The type of custom setup.
  /// Expected value is 'EnvironmentVariableSetup'.
  final pulumi.Input<String> type;
  /// The name of the environment variable.
  final pulumi.Input<String> variableName;
  /// The value of the environment variable.
  final pulumi.Input<String> variableValue;

  /// Creates a new [EnvironmentVariableSetup].
  /// [type] The type of custom setup.
  /// [variableName] The name of the environment variable.
  /// [variableValue] The value of the environment variable.
  EnvironmentVariableSetup({
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

  factory EnvironmentVariableSetup.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableSetup(
      type: (map['type'] as String).input(),
      variableName: (map['variableName'] as String).input(),
      variableValue: (map['variableValue'] as String).input(),
    );
  }
}

