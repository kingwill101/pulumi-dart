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
  const VariableValueArgs({
    required this.values,
    required this.variableName,
    this.variableValueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<PolicyVariableValueColumnValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<PolicyVariableValueColumnValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variableName': variableName,
      'variableValueName': ?variableValueName,
    };
  }

  factory VariableValueArgs.fromMap(Map<String, dynamic> map) {
    return VariableValueArgs(
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyVariableValueColumnValue>(map['values']!, (value) => PolicyVariableValueColumnValue.fromMap((value as Map).cast<String, dynamic>()))),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
      variableValueName: (() { final guardedValue = map['variableValueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
