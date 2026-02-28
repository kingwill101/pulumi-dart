// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scaleIn'] = scaleIn;
    map['scaleOut'] = scaleOut;
    return map;
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
