// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IAMCustomRole.
class IAMCustomRoleArgs2 {
  /// A human-readable description for the role.
  final Input<String>? description;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final Input<List<String>> permissions;

  /// The project that the custom role will be created in.
  /// Defaults to the provider project configuration.
  final Input<String>? project;

  /// The camel case role id to use for this role. Cannot contain `-` characters.
  final Input<String>? roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final Input<String>? stage;

  /// A human-readable title for the role.
  final Input<String> title;

  IAMCustomRoleArgs2({
    this.description,
    required this.permissions,
    this.project,
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
    map['permissions'] = permissions;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
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

  factory IAMCustomRoleArgs2.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      permissions: Input.asInput<List<String>>(map['permissions']),
      project: Input.asOptionalInput<String>(map['project']),
      roleId: Input.asOptionalInput<String>(map['roleId']),
      stage: Input.asOptionalInput<String>(map['stage']),
      title: Input.asInput<String>(map['title']),
    );
  }
}
