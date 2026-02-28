// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_i_amcustom_role_iamcustom_role_args_doc}
/// The set of arguments for IAMCustomRole.
/// {@endtemplate}
/// {@macro pulumi_organizations_i_amcustom_role_iamcustom_role_args_doc}
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

  /// Creates a new [IAMCustomRoleArgs].
  /// [description] A human-readable description for the role.
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [roleId] The role id to use for this role.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  IAMCustomRoleArgs({
    String? description,
    required String orgId,
    required List<String> permissions,
    String? roleId,
    String? stage,
    required String title,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      orgId = pulumi.Input.asInput<String>(orgId),
      permissions = pulumi.Input.asInput<List<String>>(permissions),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      stage = pulumi.Input.asOptionalInput<String>(stage),
      title = pulumi.Input.asInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'orgId': orgId,
      'permissions': permissions,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': title,
    };
  }

  factory IAMCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleArgs(
      description: map['description'] == null ? null : map['description'] as String,
      orgId: map['orgId'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      roleId: map['roleId'] == null ? null : map['roleId'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      title: map['title'] as String,
    );
  }
}

