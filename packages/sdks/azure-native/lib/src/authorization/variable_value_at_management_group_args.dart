// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_value_column_value.dart';

/// {@template pulumi_authorization_variable_value_at_management_group_args_doc}
/// The set of arguments for VariableValueAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_variable_value_at_management_group_args_doc}
class VariableValueAtManagementGroupArgs {
  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;
  /// Variable value column value array.
  final pulumi.Input<List<PolicyVariableValueColumnValue>> values;
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;
  /// The name of the variable value to operate on.
  final pulumi.Input<String>? variableValueName;

  /// Creates a new [VariableValueAtManagementGroupArgs].
  /// [managementGroupId] The ID of the management group.
  /// [values] Variable value column value array.
  /// [variableName] The name of the variable to operate on.
  /// [variableValueName] The name of the variable value to operate on.
  const VariableValueAtManagementGroupArgs({
    required this.managementGroupId,
    required this.values,
    required this.variableName,
    this.variableValueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'values': pulumi.Input.mapInputValue<List<PolicyVariableValueColumnValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<PolicyVariableValueColumnValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'variableName': variableName,
      'variableValueName': ?variableValueName,
    };
  }

  factory VariableValueAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return VariableValueAtManagementGroupArgs(
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyVariableValueColumnValue>(map['values']!, (value) => PolicyVariableValueColumnValue.fromMap((value as Map).cast<String, dynamic>()))),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
      variableValueName: (() { final guardedValue = map['variableValueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
