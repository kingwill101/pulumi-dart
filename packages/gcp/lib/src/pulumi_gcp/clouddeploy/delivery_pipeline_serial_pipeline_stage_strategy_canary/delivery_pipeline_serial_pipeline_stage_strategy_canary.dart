// ignore_for_file: unused_element, unnecessary_cast

import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment/delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment.dart';
import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment/delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment.dart';
import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config/delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanary {
  /// Configures the progressive based deployment for a Target.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment?
      canaryDeployment;

  /// Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment?
      customCanaryDeployment;

  /// Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig?
      runtimeConfig;

  DeliveryPipelineSerialPipelineStageStrategyCanary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canaryDeploymentValue = canaryDeployment;
    if (canaryDeploymentValue != null) {
      map['canaryDeployment'] = canaryDeploymentValue.toMap();
    }
    final customCanaryDeploymentValue = customCanaryDeployment;
    if (customCanaryDeploymentValue != null) {
      map['customCanaryDeployment'] = customCanaryDeploymentValue.toMap();
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] = runtimeConfigValue.toMap();
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanary.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanary(
      canaryDeployment: map['canaryDeployment'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment
              .fromMap(
                  (map['canaryDeployment'] as Map).cast<String, dynamic>()),
      customCanaryDeployment: map['customCanaryDeployment'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment
              .fromMap((map['customCanaryDeployment'] as Map)
                  .cast<String, dynamic>()),
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig
              .fromMap((map['runtimeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
