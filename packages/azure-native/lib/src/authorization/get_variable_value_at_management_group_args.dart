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
  GetVariableValueAtManagementGroupArgs({
    required String managementGroupId,
    required String variableName,
    required String variableValueName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      variableName = pulumi.Input.asInput<String>(variableName),
      variableValueName = pulumi.Input.asInput<String>(variableValueName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'variableName': variableName,
      'variableValueName': variableValueName,
    };
  }

  factory GetVariableValueAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableValueAtManagementGroupArgs(
      managementGroupId: map['managementGroupId'] as String,
      variableName: map['variableName'] as String,
      variableValueName: map['variableValueName'] as String,
    );
  }
}

