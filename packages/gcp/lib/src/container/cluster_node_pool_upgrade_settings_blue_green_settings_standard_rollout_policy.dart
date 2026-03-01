// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch. Only one of the batch_percentage or batch_node_count can be specified.
  final int? batchNodeCount;

  /// Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0). Only one of the batch_percentage or batch_node_count can be specified.
  final double? batchPercentage;

  /// Soak time after each batch gets drained. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".`.
  final String? batchSoakDuration;

  /// Creates a new [ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy].
  /// [batchNodeCount] Number of blue nodes to drain in a batch. Only one of the batch_percentage or batch_node_count can be specified.
  /// [batchPercentage] Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0). Only one of the batch_percentage or batch_node_count can be specified.
  /// [batchSoakDuration] Soak time after each batch gets drained. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".`.
  ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchNodeCount': ?batchNodeCount,
      'batchPercentage': ?batchPercentage,
      'batchSoakDuration': ?batchSoakDuration,
    };
  }

  factory ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy(
      batchNodeCount: map['batchNodeCount'] == null
          ? null
          : map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] == null
          ? null
          : map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] == null
          ? null
          : map['batchSoakDuration'] as String,
    );
  }
}
