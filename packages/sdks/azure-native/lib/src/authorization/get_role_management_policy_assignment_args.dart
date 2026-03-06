// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_management_policy_assignment_args_doc}
/// Arguments for getRoleManagementPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_management_policy_assignment_args_doc}
class GetRoleManagementPolicyAssignmentArgs {
  /// The name of format {guid_guid} the role management policy assignment to get.
  final pulumi.Input<String> roleManagementPolicyAssignmentName;
  /// The scope of the role management policy.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleManagementPolicyAssignmentArgs].
  /// [roleManagementPolicyAssignmentName] The name of format {guid_guid} the role management policy assignment to get.
  /// [scope] The scope of the role management policy.
  const GetRoleManagementPolicyAssignmentArgs({
    required this.roleManagementPolicyAssignmentName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleManagementPolicyAssignmentName': roleManagementPolicyAssignmentName,
      'scope': scope,
    };
  }

  factory GetRoleManagementPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyAssignmentArgs(
      roleManagementPolicyAssignmentName: pulumi.Input.fromValue(map['roleManagementPolicyAssignmentName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

