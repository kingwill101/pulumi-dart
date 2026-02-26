// ignore_for_file: unused_element, unnecessary_cast

import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_postdeploy/delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_postdeploy.dart';
import '../delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_predeploy/delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment {
  /// Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  final List<int> percentages;

  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy?
      postdeploy;

  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy?
      predeploy;

  /// Whether to run verify tests after each percentage deployment.
  final bool? verify;

  DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment({
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentages'] = percentages;
    final postdeployValue = postdeploy;
    if (postdeployValue != null) {
      map['postdeploy'] = postdeployValue.toMap();
    }
    final predeployValue = predeploy;
    if (predeployValue != null) {
      map['predeploy'] = predeployValue.toMap();
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment(
      percentages: (map['percentages'] as List).cast<int>(),
      postdeploy: map['postdeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy
              .fromMap((map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null
          ? null
          : DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy
              .fromMap((map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}
