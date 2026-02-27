// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IAMCustomRole.
class IAMCustomRoleArgs {
  /// A human-readable description for the role.
  final pulumi.Input<String>? description;

  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String> orgId;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>> permissions;

  /// The role id to use for this role.
  final pulumi.Input<String>? roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String>? stage;

  /// A human-readable title for the role.
  final pulumi.Input<String> title;

  IAMCustomRoleArgs({
    this.description,
    required this.orgId,
    required this.permissions,
    this.roleId,
    this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['orgId'] = orgId;
    map['permissions'] = permissions;
    final roleIdValue = roleId;
    if (roleIdValue != null) {
      map['roleId'] = roleIdValue;
    }
    final stageValue = stage;
    if (stageValue != null) {
      map['stage'] = stageValue;
    }
    map['title'] = title;
    return map;
  }

  factory IAMCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      permissions: pulumi.Input.asInput<List<String>>(map['permissions']),
      roleId: pulumi.Input.asOptionalInput<String>(map['roleId']),
      stage: pulumi.Input.asOptionalInput<String>(map['stage']),
      title: pulumi.Input.asInput<String>(map['title']),
    );
  }
}
