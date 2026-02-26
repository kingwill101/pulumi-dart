// ignore_for_file: unused_element, unnecessary_cast

import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_postdeploy/delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_postdeploy.dart';
import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_predeploy/delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig {
  /// Required. Percentage deployment for the phase.
  final int percentage;

  /// Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final String phaseId;

  /// Optional. Configuration for the postdeploy job of this phase. If this is not configured, postdeploy job will not be present for this phase.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy?
      postdeploy;

  /// Optional. Configuration for the predeploy job of this phase. If this is not configured, predeploy job will not be present for this phase.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy?
      predeploy;

  /// Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  final List<String>? profiles;

  /// Whether to run verify tests after the deployment.
  final bool? verify;

  DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig({
    required this.percentage,
    required this.phaseId,
    this.postdeploy,
    this.predeploy,
    this.profiles,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentage'] = percentage;
    map['phaseId'] = phaseId;
    final postdeployValue = postdeploy;
    if (postdeployValue != null) {
      map['postdeploy'] = postdeployValue.toMap();
    }
    final predeployValue = predeploy;
    if (predeployValue != null) {
      map['predeploy'] = predeployValue.toMap();
    }
    final profilesValue = profiles;
    if (profilesValue != null) {
      map['profiles'] = profilesValue;
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig(
      percentage: map['percentage'] as int,
      phaseId: map['phaseId'] as String,
      postdeploy: map['postdeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy
              .fromMap((map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy
              .fromMap((map['predeploy'] as Map).cast<String, dynamic>()),
      profiles: map['profiles'] == null
          ? null
          : (map['profiles'] as List).cast<String>(),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}
