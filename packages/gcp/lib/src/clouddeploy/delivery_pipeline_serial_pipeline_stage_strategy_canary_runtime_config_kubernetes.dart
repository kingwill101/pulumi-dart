// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes_gateway_service_mesh.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes_service_networking.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes {
  /// Kubernetes Gateway API service mesh configuration.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh?
      gatewayServiceMesh;

  /// Kubernetes Service networking configuration.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking?
      serviceNetworking;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes].
  /// [gatewayServiceMesh] Kubernetes Gateway API service mesh configuration.
  /// [serviceNetworking] Kubernetes Service networking configuration.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes({
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

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes(
      gatewayServiceMesh: map['gatewayServiceMesh'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh
              .fromMap(
                  (map['gatewayServiceMesh'] as Map).cast<String, dynamic>()),
      serviceNetworking: map['serviceNetworking'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking
              .fromMap(
                  (map['serviceNetworking'] as Map).cast<String, dynamic>()),
    );
  }
}
