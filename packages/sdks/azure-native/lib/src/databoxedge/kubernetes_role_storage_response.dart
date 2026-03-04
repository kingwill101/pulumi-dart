// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_role_storage_class_info_response.dart';
import 'mount_point_map_response.dart';

/// Kubernetes role storage resource
class KubernetesRoleStorageResponse {
  /// Mount points of shares in role(s).
  final pulumi.Input<List<MountPointMapResponse>>? endpoints;

  /// Kubernetes storage class info.
  final pulumi.Input<List<KubernetesRoleStorageClassInfoResponse>>
  storageClasses;

  /// Creates a new [KubernetesRoleStorageResponse].
  /// [endpoints] Mount points of shares in role(s).
  /// [storageClasses] Kubernetes storage class info.
  KubernetesRoleStorageResponse({this.endpoints, required this.storageClasses});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<MountPointMapResponse>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  MountPointMapResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storageClasses':
          pulumi.Input.mapInputValue<
            List<KubernetesRoleStorageClassInfoResponse>,
            List<Map<String, dynamic>>
          >(
            storageClasses,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesRoleStorageClassInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory KubernetesRoleStorageResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleStorageResponse(
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MountPointMapResponse>(
            guardedValue,
            (value) => MountPointMapResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      storageClasses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<KubernetesRoleStorageClassInfoResponse>(
          map['storageClasses']!,
          (value) => KubernetesRoleStorageClassInfoResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
