// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_value_column_value.dart';

/// {@template pulumi_authorization_variable_value_args_doc}
/// The set of arguments for VariableValue.
/// {@endtemplate}
/// {@macro pulumi_authorization_variable_value_args_doc}
class VariableValueArgs {
  /// Variable value column value array.
  final pulumi.Input<List<PolicyVariableValueColumnValue>> values;
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;
  /// The name of the variable value to operate on.
  final pulumi.Input<String>? variableValueName;

  /// Creates a new [VariableValueArgs].
  /// [values] Variable value column value array.
  /// [variableName] The name of the variable to operate on.
  /// [variableValueName] The name of the variable value to operate on.
  VariableValueArgs({
    required pulumi.Output<List<PolicyVariableValueColumnValue>> values,
    required pulumi.Output<String> variableName,
    pulumi.Output<String>? variableValueName,
  }) :
      values = pulumi.Input.asInput<List<PolicyVariableValueColumnValue>>(values),
      variableName = pulumi.Input.asInput<String>(variableName),
      variableValueName = pulumi.Input.asOptionalInput<String>(variableValueName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<PolicyVariableValueColumnValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<PolicyVariableValueColumnValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variableName': variableName,
      'variableValueName': ?variableValueName,
    };
  }

  factory VariableValueArgs.fromMap(Map<String, dynamic> map) {
    return VariableValueArgs(
      values: pulumi.Output.create<List<PolicyVariableValueColumnValue>>(pulumi.Input.decodeList<PolicyVariableValueColumnValue>(map['values'], (value) => PolicyVariableValueColumnValue.fromMap((value as Map).cast<String, dynamic>()))),
      variableName: pulumi.Output.create<String>(map['variableName'] as String),
      variableValueName: map['variableValueName'] == null ? null : pulumi.Output.create<String>(map['variableValueName'] as String),
    );
  }
}

