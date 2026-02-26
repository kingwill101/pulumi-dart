// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final int batchNodeCount;

  /// Percentage of the blue pool nodes to drain in a batch.
  final double batchPercentage;

  /// Soak time after each batch gets drained.
  final String batchSoakDuration;

  GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy({
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

  factory GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy(
      batchNodeCount: map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] as String,
    );
  }
}
