// ignore_for_file: unused_element, unnecessary_cast

class NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final int? batchNodeCount;

  /// Percentage of the blue pool nodes to drain in a batch.
  final double? batchPercentage;

  /// Soak time after each batch gets drained.
  final String? batchSoakDuration;

  /// Creates a new [NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch.
  /// [batchSoakDuration] Soak time after each batch gets drained.
  NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchNodeCountValue = batchNodeCount;
    if (batchNodeCountValue != null) {
      map['batchNodeCount'] = batchNodeCountValue;
    }
    final batchPercentageValue = batchPercentage;
    if (batchPercentageValue != null) {
      map['batchPercentage'] = batchPercentageValue;
    }
    final batchSoakDurationValue = batchSoakDuration;
    if (batchSoakDurationValue != null) {
      map['batchSoakDuration'] = batchSoakDurationValue;
    }
    return map;
  }

  factory NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy(
      batchNodeCount:
          map['batchNodeCount'] == null ? null : map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] == null
          ? null
          : map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] == null
          ? null
          : map['batchSoakDuration'] as String,
    );
  }
}
