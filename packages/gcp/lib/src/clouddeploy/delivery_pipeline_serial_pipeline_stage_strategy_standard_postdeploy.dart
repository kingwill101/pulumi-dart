// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  final List<String>? actions;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy({this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': ?actions};
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
