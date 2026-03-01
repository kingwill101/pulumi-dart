// ignore_for_file: unused_element, unnecessary_cast


class GetAuthScopeRole {
  /// The ID of the role.
  final String roleId;
  /// The name of the role.
  final String roleName;

  /// Creates a new [GetAuthScopeRole].
  /// [roleId] The ID of the role.
  /// [roleName] The name of the role.
  GetAuthScopeRole({
    required this.roleId,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleId': roleId,
      'roleName': roleName,
    };
  }

  factory GetAuthScopeRole.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeRole(
      roleId: map['roleId'] as String,
      roleName: map['roleName'] as String,
    );
  }
}

