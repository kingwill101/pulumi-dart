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
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? roleManagementPolicyAssignmentName,
    required pulumi.Output<String> scope,
  }) :
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      roleManagementPolicyAssignmentName = pulumi.Input.asOptionalInput<String>(roleManagementPolicyAssignmentName),
      scope = pulumi.Input.asInput<String>(scope);

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
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      roleManagementPolicyAssignmentName: map['roleManagementPolicyAssignmentName'] == null ? null : pulumi.Output.create<String>(map['roleManagementPolicyAssignmentName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

