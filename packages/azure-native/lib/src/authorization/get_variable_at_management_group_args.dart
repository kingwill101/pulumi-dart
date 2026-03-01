// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_variable_at_management_group_args_doc}
/// Arguments for getVariableAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_variable_at_management_group_args_doc}
class GetVariableAtManagementGroupArgs {
  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;
  /// The name of the variable to operate on.
  final pulumi.Input<String> variableName;

  /// Creates a new [GetVariableAtManagementGroupArgs].
  /// [managementGroupId] The ID of the management group.
  /// [variableName] The name of the variable to operate on.
  GetVariableAtManagementGroupArgs({
    required String managementGroupId,
    required String variableName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      variableName = pulumi.Input.asInput<String>(variableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'variableName': variableName,
    };
  }

  factory GetVariableAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableAtManagementGroupArgs(
      managementGroupId: map['managementGroupId'] as String,
      variableName: map['variableName'] as String,
    );
  }
}

