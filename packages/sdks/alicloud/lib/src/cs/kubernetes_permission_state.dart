// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_permission_permission.dart';

/// Input properties used for looking up and filtering KubernetesPermission resources.
class KubernetesPermissionState {
  /// A list of user permission. See `permissions` below.
  final pulumi.Input<List<KubernetesPermissionPermission>>? permissions;

  /// The ID of the Ram user, and it can also be the id of the Ram Role. If you use Ram Role id, you need to set `is_ram_role` to `true` during authorization.
  final pulumi.Input<String>? uid;

  /// Creates a new [KubernetesPermissionState].
  /// [permissions] A list of user permission. See `permissions` below.
  /// [uid] The ID of the Ram user, and it can also be the id of the Ram Role. If you use Ram Role id, you need to set `is_ram_role` to `true` during authorization.
  KubernetesPermissionState({this.permissions, this.uid});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesPermissionPermission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesPermissionPermission,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'uid': ?uid,
    };
  }

  factory KubernetesPermissionState.fromMap(Map<String, dynamic> map) {
    return KubernetesPermissionState(
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesPermissionPermission>(
            guardedValue,
            (value) => KubernetesPermissionPermission.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
