// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_permission_permission.dart';

/// Result data returned by getKubernetesPermission.
class GetKubernetesPermissionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of user permission. See `permissions` below.
  final List<GetKubernetesPermissionPermission> permissions;
  /// The ID of the RAM user. If you want to query the permissions of a RAM role, specify the ID of the RAM role.
  final String uid;

  /// Creates a new [GetKubernetesPermissionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [permissions] A list of user permission. See `permissions` below.
  /// [uid] The ID of the RAM user. If you want to query the permissions of a RAM role, specify the ID of the RAM role.
  const GetKubernetesPermissionResult({
    required this.id,
    required this.permissions,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permissions': pulumi.Input.encodeList<GetKubernetesPermissionPermission, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'uid': uid,
    };
  }

  factory GetKubernetesPermissionResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesPermissionResult(
      id: map['id'] as String,
      permissions: pulumi.Input.decodeList<GetKubernetesPermissionPermission>(map['permissions']!, (value) => GetKubernetesPermissionPermission.fromMap((value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
    );
  }
}

