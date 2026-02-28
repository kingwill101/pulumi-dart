// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_cloud_run.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig {
  /// Cloud Run runtime configuration.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun?
      cloudRun;

  /// Kubernetes runtime configuration.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes?
      kubernetes;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRunValue = cloudRun;
    if (cloudRunValue != null) {
      map['cloudRun'] = cloudRunValue.toMap();
    }
    final kubernetesValue = kubernetes;
    if (kubernetesValue != null) {
      map['kubernetes'] = kubernetesValue.toMap();
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig(
      cloudRun: map['cloudRun'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun
              .fromMap((map['cloudRun'] as Map).cast<String, dynamic>()),
      kubernetes: map['kubernetes'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes
              .fromMap((map['kubernetes'] as Map).cast<String, dynamic>()),
    );
  }
}
