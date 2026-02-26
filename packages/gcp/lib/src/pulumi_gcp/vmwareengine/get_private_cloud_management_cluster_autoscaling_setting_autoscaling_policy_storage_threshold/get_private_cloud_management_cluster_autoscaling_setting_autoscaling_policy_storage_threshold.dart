// ignore_for_file: unused_element, unnecessary_cast

class GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scaleIn'] = scaleIn;
    map['scaleOut'] = scaleOut;
    return map;
  }

  factory GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold.fromMap(
      Map<String, dynamic> map) {
    return GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
