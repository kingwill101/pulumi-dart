// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scaleIn': scaleIn, 'scaleOut': scaleOut};
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
