// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final int batchNodeCount;

  /// Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  final double batchPercentage;

  /// Soak time after each batch gets drained.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String batchSoakDuration;

  GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy({
    required this.batchNodeCount,
    required this.batchPercentage,
    required this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchNodeCount'] = batchNodeCount;
    map['batchPercentage'] = batchPercentage;
    map['batchSoakDuration'] = batchSoakDuration;
    return map;
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy(
      batchNodeCount: map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] as String,
    );
  }
}
