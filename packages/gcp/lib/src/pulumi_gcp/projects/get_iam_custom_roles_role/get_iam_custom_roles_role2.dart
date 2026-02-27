// ignore_for_file: unused_element, unnecessary_cast

class GetIamCustomRolesRole2 {
  /// The current deleted state of the role.
  final bool deleted;

  /// A human-readable description for the role.
  final String description;

  /// an identifier for the resource with the format `projects/{{project}}/roles/{{role_id}}`.
  final String id;

  /// The name of the role in the format `projects/{{project}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  final String name;

  /// The names of the permissions this role grants when bound in an IAM policy.
  final List<String> permissions;

  /// The camel case role id used for this role.
  final String roleId;

  /// The current launch stage of the role. List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final String stage;

  /// A human-readable title for the role.
  final String title;

  GetIamCustomRolesRole2({
    required this.deleted,
    required this.description,
    required this.id,
    required this.name,
    required this.permissions,
    required this.roleId,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleted'] = deleted;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['permissions'] = permissions;
    map['roleId'] = roleId;
    map['stage'] = stage;
    map['title'] = title;
    return map;
  }

  factory GetIamCustomRolesRole2.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesRole2(
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      roleId: map['roleId'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
