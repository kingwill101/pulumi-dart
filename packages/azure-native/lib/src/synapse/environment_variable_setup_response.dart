// ignore_for_file: unused_element, unnecessary_cast


/// The custom setup of setting environment variable.
class EnvironmentVariableSetupResponse {
  /// The type of custom setup.
  /// Expected value is 'EnvironmentVariableSetup'.
  final String type;
  /// The name of the environment variable.
  final String variableName;
  /// The value of the environment variable.
  final String variableValue;

  /// Creates a new [EnvironmentVariableSetupResponse].
  /// [type] The type of custom setup.
  /// [variableName] The name of the environment variable.
  /// [variableValue] The value of the environment variable.
  EnvironmentVariableSetupResponse({
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
      type: map['type'] as String,
      variableName: map['variableName'] as String,
      variableValue: map['variableValue'] as String,
    );
  }
}

