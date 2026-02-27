// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_role_stage.dart';

/// The set of arguments for OrganizationRole.
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

  OrganizationRoleArgs({
    this.deleted,
    this.description,
    this.etag,
    this.includedPermissions,
    this.name,
    required this.organizationId,
    this.roleId,
    this.stage,
    this.title,
  });

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
      deleted: pulumi.Input.asOptionalInput<bool>(map['deleted']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      includedPermissions: pulumi.Input.asOptionalInput<List<String>>(
          map['includedPermissions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      roleId: pulumi.Input.asOptionalInput<String>(map['roleId']),
      stage: pulumi.Input.asOptionalInput<OrganizationRoleStage>(map['stage']),
      title: pulumi.Input.asOptionalInput<String>(map['title']),
    );
  }
}
