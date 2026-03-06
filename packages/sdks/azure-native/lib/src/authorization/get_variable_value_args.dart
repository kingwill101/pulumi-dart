// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_variable_value_args_doc}
/// Arguments for getVariableValue.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_variable_value_args_doc}
class GetVariableValueArgs {
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;
  /// The name of the variable value to operate on.
  final pulumi.Input<String> variableValueName;

  /// Creates a new [GetVariableValueArgs].
  /// [variableName] The name of the variable to operate on.
  /// [variableValueName] The name of the variable value to operate on.
  const GetVariableValueArgs({
    required this.variableName,
    required this.variableValueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
      'variableValueName': variableValueName,
    };
  }

  factory GetVariableValueArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableValueArgs(
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
      variableValueName: pulumi.Input.fromValue(map['variableValueName'] as String),
    );
  }
}

