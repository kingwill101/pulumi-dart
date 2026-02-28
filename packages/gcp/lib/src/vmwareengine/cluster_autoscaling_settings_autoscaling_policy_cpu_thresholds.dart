// ignore_for_file: unused_element, unnecessary_cast


class ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;
  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleIn': scaleIn,
      'scaleOut': scaleOut,
    };
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}

