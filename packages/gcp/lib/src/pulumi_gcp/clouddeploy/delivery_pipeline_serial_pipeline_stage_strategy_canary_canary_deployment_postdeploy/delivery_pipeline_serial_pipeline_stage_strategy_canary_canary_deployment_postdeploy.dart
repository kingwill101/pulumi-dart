// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  final List<String>? actions;

  DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy({
    this.actions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = actionsValue;
    }
    return map;
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
