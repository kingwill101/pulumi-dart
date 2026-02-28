// ignore_for_file: unused_element, unnecessary_cast


class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun {
  /// Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  final bool? automaticTrafficControl;
  /// Optional. A list of tags that are added to the canary revision while the canary phase is in progress.
  final List<String>? canaryRevisionTags;
  /// Optional. A list of tags that are added to the prior revision while the canary phase is in progress.
  final List<String>? priorRevisionTags;
  /// Optional. A list of tags that are added to the final stable revision when the stable phase is applied.
  final List<String>? stableRevisionTags;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun].
  /// [automaticTrafficControl] Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  /// [canaryRevisionTags] Optional. A list of tags that are added to the canary revision while the canary phase is in progress.
  /// [priorRevisionTags] Optional. A list of tags that are added to the prior revision while the canary phase is in progress.
  /// [stableRevisionTags] Optional. A list of tags that are added to the final stable revision when the stable phase is applied.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun({
    this.automaticTrafficControl,
    this.canaryRevisionTags,
    this.priorRevisionTags,
    this.stableRevisionTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticTrafficControl': ?automaticTrafficControl,
      'canaryRevisionTags': ?canaryRevisionTags,
      'priorRevisionTags': ?priorRevisionTags,
      'stableRevisionTags': ?stableRevisionTags,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun(
      automaticTrafficControl: map['automaticTrafficControl'] == null ? null : map['automaticTrafficControl'] as bool,
      canaryRevisionTags: map['canaryRevisionTags'] == null ? null : (map['canaryRevisionTags'] as List).cast<String>(),
      priorRevisionTags: map['priorRevisionTags'] == null ? null : (map['priorRevisionTags'] as List).cast<String>(),
      stableRevisionTags: map['stableRevisionTags'] == null ? null : (map['stableRevisionTags'] as List).cast<String>(),
    );
  }
}

