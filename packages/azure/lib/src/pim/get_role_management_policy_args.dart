// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pim_get_role_management_policy_get_role_management_policy_args_doc}
/// Arguments for getRoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_pim_get_role_management_policy_get_role_management_policy_args_doc}
class GetRoleManagementPolicyArgs {
  /// The scoped Role Definition ID of the role for which this policy applies.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope to which this Role Management Policy applies. Can refer to a management group, a subscription, a resource group or a resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleManagementPolicyArgs].
  /// [roleDefinitionId] The scoped Role Definition ID of the role for which this policy applies.
  /// [scope] The scope to which this Role Management Policy applies. Can refer to a management group, a subscription, a resource group or a resource.
  GetRoleManagementPolicyArgs({
    required String roleDefinitionId,
    required String scope,
  }) :
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory GetRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyArgs(
      roleDefinitionId: map['roleDefinitionId'] as String,
      scope: map['scope'] as String,
    );
  }
}

