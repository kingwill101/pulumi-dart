// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_variable_value_at_management_group_args_doc}
/// Arguments for getVariableValueAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_variable_value_at_management_group_args_doc}
class GetVariableValueAtManagementGroupArgs {
  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;
  /// The name of the variable value to operate on.
  final pulumi.Input<String> variableValueName;

  /// Creates a new [GetVariableValueAtManagementGroupArgs].
  /// [managementGroupId] The ID of the management group.
  /// [variableName] The name of the variable to operate on.
  /// [variableValueName] The name of the variable value to operate on.
  const GetVariableValueAtManagementGroupArgs({
    required this.managementGroupId,
    required this.variableName,
    required this.variableValueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'variableName': variableName,
      'variableValueName': variableValueName,
    };
  }

  factory GetVariableValueAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableValueAtManagementGroupArgs(
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
      variableValueName: pulumi.Input.fromValue(map['variableValueName'] as String),
    );
  }
}

