// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesPermissionPermission {
  /// The ID of the cluster that you want to manage, When `role_type` value is `all-clusters`, the value of `cluster` must be `""`.
  final pulumi.Input<String> cluster;
  /// Specifies whether to perform a custom authorization. To perform a custom authorization, the value of `is_custom` must be `true`, and set `role_name` to a custom cluster role.
  final pulumi.Input<bool>? isCustom;
  /// Specifies whether the permissions are granted to a RAM role. When `uid` is ram role id, the value of `is_ram_role` must be `true`.
  final pulumi.Input<bool>? isRamRole;
  /// The namespace to which the permissions are scoped. This parameter is required only if you set role_type to namespace.
  final pulumi.Input<String>? namespace;
  /// Specifies the predefined role that you want to assign. Valid values `admin`, `ops`, `dev`, `restricted` and the custom cluster roles.
  final pulumi.Input<String> roleName;
  /// The authorization type. Valid values `cluster`, `namespace` and `all-clusters`.
  final pulumi.Input<String> roleType;

  /// Creates a new [KubernetesPermissionPermission].
  /// [cluster] The ID of the cluster that you want to manage, When `role_type` value is `all-clusters`, the value of `cluster` must be `""`.
  /// [isCustom] Specifies whether to perform a custom authorization. To perform a custom authorization, the value of `is_custom` must be `true`, and set `role_name` to a custom cluster role.
  /// [isRamRole] Specifies whether the permissions are granted to a RAM role. When `uid` is ram role id, the value of `is_ram_role` must be `true`.
  /// [namespace] The namespace to which the permissions are scoped. This parameter is required only if you set role_type to namespace.
  /// [roleName] Specifies the predefined role that you want to assign. Valid values `admin`, `ops`, `dev`, `restricted` and the custom cluster roles.
  /// [roleType] The authorization type. Valid values `cluster`, `namespace` and `all-clusters`.
  const KubernetesPermissionPermission({
    required this.cluster,
    this.isCustom,
    this.isRamRole,
    this.namespace,
    required this.roleName,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'isCustom': ?isCustom,
      'isRamRole': ?isRamRole,
      'namespace': ?namespace,
      'roleName': roleName,
      'roleType': roleType,
    };
  }

  factory KubernetesPermissionPermission.fromMap(Map<String, dynamic> map) {
    return KubernetesPermissionPermission(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      isCustom: (() { final guardedValue = map['isCustom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRamRole: (() { final guardedValue = map['isRamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
      roleType: pulumi.Input.fromValue(map['roleType'] as String),
    );
  }
}

