// ignore_for_file: unused_element, unnecessary_cast

class KxClusterAutoScalingConfiguration {
  /// Metric your cluster will track in order to scale in and out. For example, CPU_UTILIZATION_PERCENTAGE is the average CPU usage across all nodes in a cluster.
  final String autoScalingMetric;

  /// Highest number of nodes to scale. Cannot be greater than 5
  final int maxNodeCount;

  /// Desired value of chosen `auto_scaling_metric`. When metric drops below this value, cluster will scale in. When metric goes above this value, cluster will scale out. Can be set between 0 and 100 percent.
  final double metricTarget;

  /// Lowest number of nodes to scale. Must be at least 1 and less than the `max_node_count`. If nodes in cluster belong to multiple availability zones, then `min_node_count` must be at least 3.
  final int minNodeCount;

  /// Duration in seconds that FinSpace will wait after a scale in event before initiating another scaling event.
  final double scaleInCooldownSeconds;

  /// Duration in seconds that FinSpace will wait after a scale out event before initiating another scaling event.
  final double scaleOutCooldownSeconds;

  /// Creates a new [KxClusterAutoScalingConfiguration].
  /// [autoScalingMetric] Metric your cluster will track in order to scale in and out. For example, CPU_UTILIZATION_PERCENTAGE is the average CPU usage across all nodes in a cluster.
  /// [maxNodeCount] Highest number of nodes to scale. Cannot be greater than 5
  /// [metricTarget] Desired value of chosen `auto_scaling_metric`. When metric drops below this value, cluster will scale in. When metric goes above this value, cluster will scale out. Can be set between 0 and 100 percent.
  /// [minNodeCount] Lowest number of nodes to scale. Must be at least 1 and less than the `max_node_count`. If nodes in cluster belong to multiple availability zones, then `min_node_count` must be at least 3.
  /// [scaleInCooldownSeconds] Duration in seconds that FinSpace will wait after a scale in event before initiating another scaling event.
  /// [scaleOutCooldownSeconds] Duration in seconds that FinSpace will wait after a scale out event before initiating another scaling event.
  KxClusterAutoScalingConfiguration({
    required this.autoScalingMetric,
    required this.maxNodeCount,
    required this.metricTarget,
    required this.minNodeCount,
    required this.scaleInCooldownSeconds,
    required this.scaleOutCooldownSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingMetric': autoScalingMetric,
      'maxNodeCount': maxNodeCount,
      'metricTarget': metricTarget,
      'minNodeCount': minNodeCount,
      'scaleInCooldownSeconds': scaleInCooldownSeconds,
      'scaleOutCooldownSeconds': scaleOutCooldownSeconds,
    };
  }

  factory KxClusterAutoScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterAutoScalingConfiguration(
      autoScalingMetric: map['autoScalingMetric'] as String,
      maxNodeCount: map['maxNodeCount'] as int,
      metricTarget: map['metricTarget'] as double,
      minNodeCount: map['minNodeCount'] as int,
      scaleInCooldownSeconds: map['scaleInCooldownSeconds'] as double,
      scaleOutCooldownSeconds: map['scaleOutCooldownSeconds'] as double,
    );
  }
}
