// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  final List<String>? actions;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy({
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

  factory DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
