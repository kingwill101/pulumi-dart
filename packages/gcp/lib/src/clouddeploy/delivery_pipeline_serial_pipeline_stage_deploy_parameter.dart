// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineSerialPipelineStageDeployParameter {
  /// Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  final Map<String, String>? matchTargetLabels;

  /// Required. Values are deploy parameters in key-value pairs.
  final Map<String, String> values;

  /// Creates a new [DeliveryPipelineSerialPipelineStageDeployParameter].
  /// [matchTargetLabels] Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  /// [values] Required. Values are deploy parameters in key-value pairs.
  DeliveryPipelineSerialPipelineStageDeployParameter({
    this.matchTargetLabels,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchTargetLabels': ?matchTargetLabels,
      'values': values,
    };
  }

  factory DeliveryPipelineSerialPipelineStageDeployParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageDeployParameter(
      matchTargetLabels: map['matchTargetLabels'] == null
          ? null
          : (map['matchTargetLabels'] as Map).cast<String, String>(),
      values: (map['values'] as Map).cast<String, String>(),
    );
  }
}
