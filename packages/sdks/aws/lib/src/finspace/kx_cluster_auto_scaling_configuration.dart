// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterAutoScalingConfiguration {
  /// Metric your cluster will track in order to scale in and out. For example, CPU_UTILIZATION_PERCENTAGE is the average CPU usage across all nodes in a cluster.
  final pulumi.Input<String> autoScalingMetric;

  /// Highest number of nodes to scale. Cannot be greater than 5
  final pulumi.Input<int> maxNodeCount;

  /// Desired value of chosen `auto_scaling_metric`. When metric drops below this value, cluster will scale in. When metric goes above this value, cluster will scale out. Can be set between 0 and 100 percent.
  final pulumi.Input<double> metricTarget;

  /// Lowest number of nodes to scale. Must be at least 1 and less than the `max_node_count`. If nodes in cluster belong to multiple availability zones, then `min_node_count` must be at least 3.
  final pulumi.Input<int> minNodeCount;

  /// Duration in seconds that FinSpace will wait after a scale in event before initiating another scaling event.
  final pulumi.Input<double> scaleInCooldownSeconds;

  /// Duration in seconds that FinSpace will wait after a scale out event before initiating another scaling event.
  final pulumi.Input<double> scaleOutCooldownSeconds;

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
      autoScalingMetric: pulumi.Input.fromValue(
        map['autoScalingMetric'] as String,
      ),
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      metricTarget: pulumi.Input.fromValue(map['metricTarget'] as double),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
      scaleInCooldownSeconds: pulumi.Input.fromValue(
        map['scaleInCooldownSeconds'] as double,
      ),
      scaleOutCooldownSeconds: pulumi.Input.fromValue(
        map['scaleOutCooldownSeconds'] as double,
      ),
    );
  }
}
