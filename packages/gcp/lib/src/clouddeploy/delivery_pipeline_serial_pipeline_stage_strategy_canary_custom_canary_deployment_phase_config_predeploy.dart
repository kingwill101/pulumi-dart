// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  final List<String>? actions;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy({
    this.actions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': ?actions};
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
