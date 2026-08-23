// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_management_policy_args_doc}
/// Arguments for getRoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_management_policy_args_doc}
class GetRoleManagementPolicyArgs {
  /// The name (guid) of the role management policy to get.
  final pulumi.Input<String> roleManagementPolicyName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRoleManagementPolicyArgs].
  /// [roleManagementPolicyName] The name (guid) of the role management policy to get.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const GetRoleManagementPolicyArgs({
    required this.roleManagementPolicyName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleManagementPolicyName': roleManagementPolicyName,
      'scope': scope,
    };
  }

  factory GetRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyArgs(
      roleManagementPolicyName: pulumi.Input.fromValue(map['roleManagementPolicyName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
