// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scaleIn'] = scaleIn;
    map['scaleOut'] = scaleOut;
    return map;
  }

  factory GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
