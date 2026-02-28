// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  /// Creates a new [GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scaleIn'] = scaleIn;
    map['scaleOut'] = scaleOut;
    return map;
  }

  factory GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
