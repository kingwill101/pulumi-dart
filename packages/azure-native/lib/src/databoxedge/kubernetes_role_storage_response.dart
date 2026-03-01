// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_role_storage_class_info_response.dart';
import 'mount_point_map_response.dart';

/// Kubernetes role storage resource
class KubernetesRoleStorageResponse {
  /// Mount points of shares in role(s).
  final List<MountPointMapResponse>? endpoints;
  /// Kubernetes storage class info.
  final List<KubernetesRoleStorageClassInfoResponse> storageClasses;

  /// Creates a new [KubernetesRoleStorageResponse].
  /// [endpoints] Mount points of shares in role(s).
  /// [storageClasses] Kubernetes storage class info.
  KubernetesRoleStorageResponse({
    this.endpoints,
    required this.storageClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<MountPointMapResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'storageClasses': pulumi.Input.encodeList<KubernetesRoleStorageClassInfoResponse, Map<String, dynamic>>(storageClasses, (value) => value.toMap()),
    };
  }

  factory KubernetesRoleStorageResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleStorageResponse(
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<MountPointMapResponse>(map['endpoints'], (value) => MountPointMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageClasses: pulumi.Input.decodeList<KubernetesRoleStorageClassInfoResponse>(map['storageClasses'], (value) => KubernetesRoleStorageClassInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

