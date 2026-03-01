// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesPermissionPermission {
  /// Indicates whether the permissions are granted to the cluster owner. Valid values `false`, `true`.
  final bool isOwner;
  /// Indicates whether the permissions are granted to the RAM role. Valid values `false`, `true`.
  final bool isRamRole;
  /// The permission settings to manage ACK clusters.
  final String resourceId;
  /// The authorization type. Valid values `cluster`, `namespace` and `console`.
  final String resourceType;
  /// The name of the predefined role. If a custom role is assigned, the value is the name of the assigined custom role.
  final String roleName;
  /// The predefined role. Valid values `admin`,`ops`,`dev`,`restricted` and `custom`.
  final String roleType;

  /// Creates a new [GetKubernetesPermissionPermission].
  /// [isOwner] Indicates whether the permissions are granted to the cluster owner. Valid values `false`, `true`.
  /// [isRamRole] Indicates whether the permissions are granted to the RAM role. Valid values `false`, `true`.
  /// [resourceId] The permission settings to manage ACK clusters.
  /// [resourceType] The authorization type. Valid values `cluster`, `namespace` and `console`.
  /// [roleName] The name of the predefined role. If a custom role is assigned, the value is the name of the assigined custom role.
  /// [roleType] The predefined role. Valid values `admin`,`ops`,`dev`,`restricted` and `custom`.
  GetKubernetesPermissionPermission({
    required this.isOwner,
    required this.isRamRole,
    required this.resourceId,
    required this.resourceType,
    required this.roleName,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOwner': isOwner,
      'isRamRole': isRamRole,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'roleName': roleName,
      'roleType': roleType,
    };
  }

  factory GetKubernetesPermissionPermission.fromMap(Map<String, dynamic> map) {
    return GetKubernetesPermissionPermission(
      isOwner: map['isOwner'] as bool,
      isRamRole: map['isRamRole'] as bool,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      roleName: map['roleName'] as String,
      roleType: map['roleType'] as String,
    );
  }
}

