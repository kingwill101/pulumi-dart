// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_service_mesh.dart';
import 'service_networking.dart';

/// KubernetesConfig contains the Kubernetes runtime configuration.
class KubernetesConfig {
  /// Kubernetes Gateway API service mesh configuration.
  final GatewayServiceMesh? gatewayServiceMesh;

  /// Kubernetes Service networking configuration.
  final ServiceNetworking? serviceNetworking;

  KubernetesConfig({
    this.gatewayServiceMesh,
    this.serviceNetworking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gatewayServiceMeshValue = gatewayServiceMesh;
    if (gatewayServiceMeshValue != null) {
      map['gatewayServiceMesh'] = gatewayServiceMeshValue.toMap();
    }
    final serviceNetworkingValue = serviceNetworking;
    if (serviceNetworkingValue != null) {
      map['serviceNetworking'] = serviceNetworkingValue.toMap();
    }
    return map;
  }

  factory KubernetesConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesConfig(
      gatewayServiceMesh: map['gatewayServiceMesh'] == null
          ? null
          : GatewayServiceMesh.fromMap(
              (map['gatewayServiceMesh'] as Map).cast<String, dynamic>()),
      serviceNetworking: map['serviceNetworking'] == null
          ? null
          : ServiceNetworking.fromMap(
              (map['serviceNetworking'] as Map).cast<String, dynamic>()),
    );
  }
}
