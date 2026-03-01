// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  final List<String>? actions;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy({
    this.actions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': ?actions};
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
