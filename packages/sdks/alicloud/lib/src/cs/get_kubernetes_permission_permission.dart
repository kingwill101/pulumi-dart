// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesPermissionPermission {
  /// Indicates whether the permissions are granted to the cluster owner. Valid values `false`, `true`.
  final pulumi.Input<bool> isOwner;
  /// Indicates whether the permissions are granted to the RAM role. Valid values `false`, `true`.
  final pulumi.Input<bool> isRamRole;
  /// The permission settings to manage ACK clusters.
  final pulumi.Input<String> resourceId;
  /// The authorization type. Valid values `cluster`, `namespace` and `console`.
  final pulumi.Input<String> resourceType;
  /// The name of the predefined role. If a custom role is assigned, the value is the name of the assigined custom role.
  final pulumi.Input<String> roleName;
  /// The predefined role. Valid values `admin`,`ops`,`dev`,`restricted` and `custom`.
  final pulumi.Input<String> roleType;

  /// Creates a new [GetKubernetesPermissionPermission].
  /// [isOwner] Indicates whether the permissions are granted to the cluster owner. Valid values `false`, `true`.
  /// [isRamRole] Indicates whether the permissions are granted to the RAM role. Valid values `false`, `true`.
  /// [resourceId] The permission settings to manage ACK clusters.
  /// [resourceType] The authorization type. Valid values `cluster`, `namespace` and `console`.
  /// [roleName] The name of the predefined role. If a custom role is assigned, the value is the name of the assigined custom role.
  /// [roleType] The predefined role. Valid values `admin`,`ops`,`dev`,`restricted` and `custom`.
  const GetKubernetesPermissionPermission({
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
      isOwner: pulumi.Input.fromValue(map['isOwner'] as bool),
      isRamRole: pulumi.Input.fromValue(map['isRamRole'] as bool),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
      roleType: pulumi.Input.fromValue(map['roleType'] as String),
    );
  }
}

