// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_role_compute_response.dart';
import 'kubernetes_role_network_response.dart';
import 'kubernetes_role_storage_response.dart';

/// Kubernetes role resources
class KubernetesRoleResourcesResponse {
  /// Kubernetes role compute resource
  final KubernetesRoleComputeResponse compute;
  /// Kubernetes role network resource
  final KubernetesRoleNetworkResponse network;
  /// Kubernetes role storage resource
  final KubernetesRoleStorageResponse? storage;

  /// Creates a new [KubernetesRoleResourcesResponse].
  /// [compute] Kubernetes role compute resource
  /// [network] Kubernetes role network resource
  /// [storage] Kubernetes role storage resource
  KubernetesRoleResourcesResponse({
    required this.compute,
    required this.network,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': compute.toMap(),
      'network': network.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory KubernetesRoleResourcesResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleResourcesResponse(
      compute: KubernetesRoleComputeResponse.fromMap((map['compute'] as Map).cast<String, dynamic>()),
      network: KubernetesRoleNetworkResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : KubernetesRoleStorageResponse.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

