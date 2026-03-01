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
  GetVariableValueArgs({
    required pulumi.Output<String> variableName,
    required pulumi.Output<String> variableValueName,
  }) :
      variableName = pulumi.Input.asInput<String>(variableName),
      variableValueName = pulumi.Input.asInput<String>(variableValueName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variableName': variableName,
      'variableValueName': variableValueName,
    };
  }

  factory GetVariableValueArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableValueArgs(
      variableName: pulumi.Output.create<String>(map['variableName'] as String),
      variableValueName: pulumi.Output.create<String>(map['variableValueName'] as String),
    );
  }
}

