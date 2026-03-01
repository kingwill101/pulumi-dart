// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final int scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final int scaleOut;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scaleIn': scaleIn, 'scaleOut': scaleOut};
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds(
      scaleIn: map['scaleIn'] as int,
      scaleOut: map['scaleOut'] as int,
    );
  }
}
