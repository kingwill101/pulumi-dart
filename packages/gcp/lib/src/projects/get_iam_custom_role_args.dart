// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_iam_custom_role_get_iam_custom_role_args_doc}
/// Arguments for getIamCustomRole.
/// {@endtemplate}
/// {@macro pulumi_projects_get_iam_custom_role_get_iam_custom_role_args_doc}
class GetIamCustomRoleArgs {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final pulumi.Input<String>? project;
  /// The role id that has been used for this role.
  final pulumi.Input<String> roleId;

  /// Creates a new [GetIamCustomRoleArgs].
  /// [project] The project were the custom role has been created in. Defaults to the provider project configuration.
  /// [roleId] The role id that has been used for this role.
  GetIamCustomRoleArgs({
    String? project,
    required String roleId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'roleId': roleId,
    };
  }

  factory GetIamCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleArgs(
      project: map['project'] == null ? null : map['project'] as String,
      roleId: map['roleId'] as String,
    );
  }
}

