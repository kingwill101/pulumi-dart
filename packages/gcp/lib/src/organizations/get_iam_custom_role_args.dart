// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_iam_custom_role_get_iam_custom_role_args_doc}
/// Arguments for getIamCustomRole.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_iam_custom_role_get_iam_custom_role_args_doc}
class GetIamCustomRoleArgs {
  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String> orgId;

  /// The role id that has been used for this role.
  final pulumi.Input<String> roleId;

  /// Creates a new [GetIamCustomRoleArgs].
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [roleId] The role id that has been used for this role.
  GetIamCustomRoleArgs({
    required String orgId,
    required String roleId,
  })  : orgId = pulumi.Input.asInput<String>(orgId),
        roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['orgId'] = orgId;
    map['roleId'] = roleId;
    return map;
  }

  factory GetIamCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleArgs(
      orgId: map['orgId'] as String,
      roleId: map['roleId'] as String,
    );
  }
}
