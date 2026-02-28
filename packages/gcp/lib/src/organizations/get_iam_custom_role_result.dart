// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIamCustomRole.
class GetIamCustomRoleResult {
  final bool deleted;
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String orgId;
  final List<String> permissions;
  final String roleId;
  final String stage;
  final String title;

  /// Creates a new [GetIamCustomRoleResult].
  /// [deleted] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [orgId] Required.
  /// [permissions] Required.
  /// [roleId] Required.
  /// [stage] Required.
  /// [title] Required.
  GetIamCustomRoleResult({
    required this.deleted,
    required this.description,
    required this.id,
    required this.name,
    required this.orgId,
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
    map['orgId'] = orgId;
    map['permissions'] = permissions;
    map['roleId'] = roleId;
    map['stage'] = stage;
    map['title'] = title;
    return map;
  }

  factory GetIamCustomRoleResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRoleResult(
      deleted: map['deleted'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      orgId: map['orgId'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      roleId: map['roleId'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
