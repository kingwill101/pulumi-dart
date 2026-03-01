// ignore_for_file: unused_element, unnecessary_cast


class UserPermissionPermission {
  /// Whether the grant object is a RAM role.
  final bool? isCustom;
  /// Whether the grant object is an entity.
  final bool? isRamRole;
  /// The permission name. Valid values: `istio-admin`, `istio-ops`, `istio-readonly`.
  /// - `istio-admin`:  The administrator.
  /// - `istio-ops`: The administrator of the service mesh resource.
  /// - `istio-readonly`: The read only permission.
  final String? roleName;
  /// The role type. Valid Value: `custom`.
  final String? roleType;
  /// The service mesh id.
  final String? serviceMeshId;

  /// Creates a new [UserPermissionPermission].
  /// [isCustom] Whether the grant object is a RAM role.
  /// [isRamRole] Whether the grant object is an entity.
  /// [roleName] The permission name. Valid values: `istio-admin`, `istio-ops`, `istio-readonly`.
  /// [roleType] The role type. Valid Value: `custom`.
  /// [serviceMeshId] The service mesh id.
  UserPermissionPermission({
    this.isCustom,
    this.isRamRole,
    this.roleName,
    this.roleType,
    this.serviceMeshId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCustom': ?isCustom,
      'isRamRole': ?isRamRole,
      'roleName': ?roleName,
      'roleType': ?roleType,
      'serviceMeshId': ?serviceMeshId,
    };
  }

  factory UserPermissionPermission.fromMap(Map<String, dynamic> map) {
    return UserPermissionPermission(
      isCustom: map['isCustom'] == null ? null : map['isCustom'] as bool,
      isRamRole: map['isRamRole'] == null ? null : map['isRamRole'] as bool,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      serviceMeshId: map['serviceMeshId'] == null ? null : map['serviceMeshId'] as String,
    );
  }
}

