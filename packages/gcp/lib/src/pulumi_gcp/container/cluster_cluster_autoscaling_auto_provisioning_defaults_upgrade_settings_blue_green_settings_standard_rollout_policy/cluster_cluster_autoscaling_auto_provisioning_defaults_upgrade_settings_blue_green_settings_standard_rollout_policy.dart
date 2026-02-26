// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch. Only one of the<span pulumi-lang-nodejs=" batchPercentage " pulumi-lang-dotnet=" BatchPercentage " pulumi-lang-go=" batchPercentage " pulumi-lang-python=" batch_percentage " pulumi-lang-yaml=" batchPercentage " pulumi-lang-java=" batchPercentage "> batch_percentage </span>or<span pulumi-lang-nodejs=" batchNodeCount " pulumi-lang-dotnet=" BatchNodeCount " pulumi-lang-go=" batchNodeCount " pulumi-lang-python=" batch_node_count " pulumi-lang-yaml=" batchNodeCount " pulumi-lang-java=" batchNodeCount "> batch_node_count </span>can be specified.
  final int? batchNodeCount;

  /// Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0). Only one of the<span pulumi-lang-nodejs=" batchPercentage " pulumi-lang-dotnet=" BatchPercentage " pulumi-lang-go=" batchPercentage " pulumi-lang-python=" batch_percentage " pulumi-lang-yaml=" batchPercentage " pulumi-lang-java=" batchPercentage "> batch_percentage </span>or<span pulumi-lang-nodejs=" batchNodeCount " pulumi-lang-dotnet=" BatchNodeCount " pulumi-lang-go=" batchNodeCount " pulumi-lang-python=" batch_node_count " pulumi-lang-yaml=" batchNodeCount " pulumi-lang-java=" batchNodeCount "> batch_node_count </span>can be specified.
  final double? batchPercentage;

  /// Soak time after each batch gets drained. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".`.
  final String? batchSoakDuration;

  ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy({
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

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy(
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
