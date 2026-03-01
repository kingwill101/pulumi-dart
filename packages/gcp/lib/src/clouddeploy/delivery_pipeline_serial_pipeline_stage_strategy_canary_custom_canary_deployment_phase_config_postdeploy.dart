// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  final List<String>? actions;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy({
    this.actions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': ?actions};
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
