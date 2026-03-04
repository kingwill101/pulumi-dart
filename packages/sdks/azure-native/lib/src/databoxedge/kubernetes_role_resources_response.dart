// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_role_compute_response.dart';
import 'kubernetes_role_network_response.dart';
import 'kubernetes_role_storage_response.dart';

/// Kubernetes role resources
class KubernetesRoleResourcesResponse {
  /// Kubernetes role compute resource
  final pulumi.Input<KubernetesRoleComputeResponse> compute;

  /// Kubernetes role network resource
  final pulumi.Input<KubernetesRoleNetworkResponse> network;

  /// Kubernetes role storage resource
  final pulumi.Input<KubernetesRoleStorageResponse>? storage;

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
      'compute':
          pulumi.Input.mapInputValue<
            KubernetesRoleComputeResponse,
            Map<String, dynamic>
          >(compute, (value) => value.toMap()),
      'network':
          pulumi.Input.mapInputValue<
            KubernetesRoleNetworkResponse,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'storage':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesRoleStorageResponse,
            Map<String, dynamic>
          >(storage, (value) => value.toMap()),
    };
  }

  factory KubernetesRoleResourcesResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleResourcesResponse(
      compute: pulumi.Input.fromValue(
        KubernetesRoleComputeResponse.fromMap(
          (map['compute']! as Map).cast<String, dynamic>(),
        ),
      ),
      network: pulumi.Input.fromValue(
        KubernetesRoleNetworkResponse.fromMap(
          (map['network']! as Map).cast<String, dynamic>(),
        ),
      ),
      storage: (() {
        final guardedValue = map['storage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesRoleStorageResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
