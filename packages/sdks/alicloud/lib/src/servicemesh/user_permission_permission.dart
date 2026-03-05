// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPermissionPermission {
  /// Whether the grant object is a RAM role.
  final pulumi.Input<bool>? isCustom;
  /// Whether the grant object is an entity.
  final pulumi.Input<bool>? isRamRole;
  /// The permission name. Valid values: `istio-admin`, `istio-ops`, `istio-readonly`.
  /// - `istio-admin`:  The administrator.
  /// - `istio-ops`: The administrator of the service mesh resource.
  /// - `istio-readonly`: The read only permission.
  final pulumi.Input<String>? roleName;
  /// The role type. Valid Value: `custom`.
  final pulumi.Input<String>? roleType;
  /// The service mesh id.
  final pulumi.Input<String>? serviceMeshId;

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
      isCustom: (() { final guardedValue = map['isCustom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRamRole: (() { final guardedValue = map['isRamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMeshId: (() { final guardedValue = map['serviceMeshId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

