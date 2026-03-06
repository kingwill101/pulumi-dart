// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_permission_permission.dart';

/// {@template pulumi_cs_kubernetes_permission_kubernetes_permission_args_doc}
/// The set of arguments for KubernetesPermission.
/// {@endtemplate}
/// {@macro pulumi_cs_kubernetes_permission_kubernetes_permission_args_doc}
class KubernetesPermissionArgs {
  /// A list of user permission. See `permissions` below.
  final pulumi.Input<List<KubernetesPermissionPermission>>? permissions;
  /// The ID of the Ram user, and it can also be the id of the Ram Role. If you use Ram Role id, you need to set `is_ram_role` to `true` during authorization.
  final pulumi.Input<String> uid;

  /// Creates a new [KubernetesPermissionArgs].
  /// [permissions] A list of user permission. See `permissions` below.
  /// [uid] The ID of the Ram user, and it can also be the id of the Ram Role. If you use Ram Role id, you need to set `is_ram_role` to `true` during authorization.
  const KubernetesPermissionArgs({
    this.permissions,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<KubernetesPermissionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<KubernetesPermissionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': uid,
    };
  }

  factory KubernetesPermissionArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesPermissionArgs(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesPermissionPermission>(guardedValue, (value) => KubernetesPermissionPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

