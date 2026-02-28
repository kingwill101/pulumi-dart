// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_role_stage.dart';

/// {@template pulumi_iam_v1_organization_role_args_doc}
/// The set of arguments for OrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_organization_role_args_doc}
class OrganizationRoleArgs {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  final pulumi.Input<bool>? deleted;

  /// Optional. A human-readable description for the role.
  final pulumi.Input<String>? description;

  /// Used to perform a consistent read-modify-write.
  final pulumi.Input<String>? etag;

  /// The names of the permissions this role grants when bound in an IAM policy.
  final pulumi.Input<List<String>>? includedPermissions;

  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// The role ID to use for this role. A role ID may contain alphanumeric characters, underscores (`_`), and periods (`.`). It must contain a minimum of 3 characters and a maximum of 64 characters.
  final pulumi.Input<String>? roleId;

  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  final pulumi.Input<OrganizationRoleStage>? stage;

  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  final pulumi.Input<String>? title;

  /// Creates a new [OrganizationRoleArgs].
  /// [deleted] The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  /// [description] Optional. A human-readable description for the role.
  /// [etag] Used to perform a consistent read-modify-write.
  /// [includedPermissions] The names of the permissions this role grants when bound in an IAM policy.
  /// [name] The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  /// [organizationId] Required.
  /// [roleId] The role ID to use for this role. A role ID may contain alphanumeric characters, underscores (`_`), and periods (`.`). It must contain a minimum of 3 characters and a maximum of 64 characters.
  /// [stage] The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  /// [title] Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  OrganizationRoleArgs({
    bool? deleted,
    String? description,
    String? etag,
    List<String>? includedPermissions,
    String? name,
    required String organizationId,
    String? roleId,
    OrganizationRoleStage? stage,
    String? title,
  })  : deleted = pulumi.Input.asOptionalInput<bool>(deleted),
        description = pulumi.Input.asOptionalInput<String>(description),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        includedPermissions =
            pulumi.Input.asOptionalInput<List<String>>(includedPermissions),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        roleId = pulumi.Input.asOptionalInput<String>(roleId),
        stage = pulumi.Input.asOptionalInput<OrganizationRoleStage>(stage),
        title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletedValue = deleted;
    if (deletedValue != null) {
      map['deleted'] = deletedValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final includedPermissionsValue = includedPermissions;
    if (includedPermissionsValue != null) {
      map['includedPermissions'] = includedPermissionsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final roleIdValue = roleId;
    if (roleIdValue != null) {
      map['roleId'] = roleIdValue;
    }
    final stageValue = stage;
    if (stageValue != null) {
      map['stage'] =
          pulumi.Input.mapOptionalInputValue<OrganizationRoleStage, String>(
              stageValue, (value) => value.value);
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory OrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationRoleArgs(
      deleted: map['deleted'] == null ? null : map['deleted'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      includedPermissions: map['includedPermissions'] == null
          ? null
          : (map['includedPermissions'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      roleId: map['roleId'] == null ? null : map['roleId'] as String,
      stage: map['stage'] == null
          ? null
          : OrganizationRoleStage.fromValue(map['stage'] as String),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
