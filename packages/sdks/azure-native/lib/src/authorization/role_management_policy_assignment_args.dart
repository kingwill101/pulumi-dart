// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_role_management_policy_assignment_args_doc}
/// The set of arguments for RoleManagementPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_management_policy_assignment_args_doc}
class RoleManagementPolicyAssignmentArgs {
  /// The policy id role management policy assignment.
  final pulumi.Input<String>? policyId;

  /// The role definition of management policy assignment.
  final pulumi.Input<String>? roleDefinitionId;

  /// The name of format {guid_guid} the role management policy assignment to upsert.
  final pulumi.Input<String>? roleManagementPolicyAssignmentName;

  /// The role management policy scope.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleManagementPolicyAssignmentArgs].
  /// [policyId] The policy id role management policy assignment.
  /// [roleDefinitionId] The role definition of management policy assignment.
  /// [roleManagementPolicyAssignmentName] The name of format {guid_guid} the role management policy assignment to upsert.
  /// [scope] The role management policy scope.
  RoleManagementPolicyAssignmentArgs({
    this.policyId,
    this.roleDefinitionId,
    this.roleManagementPolicyAssignmentName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'roleDefinitionId': ?roleDefinitionId,
      'roleManagementPolicyAssignmentName': ?roleManagementPolicyAssignmentName,
      'scope': scope,
    };
  }

  factory RoleManagementPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyAssignmentArgs(
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleManagementPolicyAssignmentName: (() {
        final guardedValue = map['roleManagementPolicyAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
