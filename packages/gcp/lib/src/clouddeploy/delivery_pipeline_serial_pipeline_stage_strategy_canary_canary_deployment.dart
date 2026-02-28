// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment {
  /// Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  final List<int> percentages;
  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy? postdeploy;
  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  final DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy? predeploy;
  /// Whether to run verify tests after each percentage deployment.
  final bool? verify;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment].
  /// [percentages] Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 <= n < 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to run verify tests after each percentage deployment.
  DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment({
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentages': percentages,
      'postdeploy': ?postdeploy == null ? null : postdeploy!.toMap(),
      'predeploy': ?predeploy == null ? null : predeploy!.toMap(),
      'verify': ?verify,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment(
      percentages: (map['percentages'] as List).cast<int>(),
      postdeploy: map['postdeploy'] == null ? null : DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy.fromMap((map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null ? null : DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy.fromMap((map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}

