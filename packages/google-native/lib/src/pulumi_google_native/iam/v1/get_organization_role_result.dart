// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrganizationRole.
class GetOrganizationRoleResult {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  final bool deleted;

  /// Optional. A human-readable description for the role.
  final String description;

  /// Used to perform a consistent read-modify-write.
  final String etag;

  /// The names of the permissions this role grants when bound in an IAM policy.
  final List<String> includedPermissions;

  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  final String name;

  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  final String stage;

  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  final String title;

  GetOrganizationRoleResult({
    required this.deleted,
    required this.description,
    required this.etag,
    required this.includedPermissions,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleted'] = deleted;
    map['description'] = description;
    map['etag'] = etag;
    map['includedPermissions'] = includedPermissions;
    map['name'] = name;
    map['stage'] = stage;
    map['title'] = title;
    return map;
  }

  factory GetOrganizationRoleResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleResult(
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      etag: map['etag'] as String,
      includedPermissions: (map['includedPermissions'] as List).cast<String>(),
      name: map['name'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
