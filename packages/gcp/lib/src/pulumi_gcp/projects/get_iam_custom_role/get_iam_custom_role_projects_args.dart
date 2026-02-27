// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamCustomRole.
class GetIamCustomRoleProjectsArgs {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final pulumi.Input<String>? project;

  /// The role id that has been used for this role.
  final pulumi.Input<String> roleId;

  GetIamCustomRoleProjectsArgs({
    this.project,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['roleId'] = roleId;
    return map;
  }

  factory GetIamCustomRoleProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleProjectsArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      roleId: pulumi.Input.asInput<String>(map['roleId']),
    );
  }
}
