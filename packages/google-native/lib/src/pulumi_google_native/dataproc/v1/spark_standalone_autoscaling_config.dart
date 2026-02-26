// ignore_for_file: unused_element, unnecessary_cast

/// Basic autoscaling configurations for Spark Standalone.
class SparkStandaloneAutoscalingConfig {
  /// Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decommissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.
  final String gracefulDecommissionTimeout;

  /// Optional. Remove only idle workers when scaling down cluster
  final bool? removeOnlyIdleWorkers;

  /// Fraction of required executors to remove from Spark Serverless clusters. A scale-down factor of 1.0 will result in scaling down so that there are no more executors for the Spark Job.(more aggressive scaling). A scale-down factor closer to 0 will result in a smaller magnitude of scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.
  final double scaleDownFactor;

  /// Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  final double? scaleDownMinWorkerFraction;

  /// Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of 1.0 will result in scaling up so that there are no more required workers for the Spark Job (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling).Bounds: 0.0, 1.0.
  final double scaleUpFactor;

  /// Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  final double? scaleUpMinWorkerFraction;

  SparkStandaloneAutoscalingConfig({
    required this.gracefulDecommissionTimeout,
    this.removeOnlyIdleWorkers,
    required this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    required this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gracefulDecommissionTimeout'] = gracefulDecommissionTimeout;
    final removeOnlyIdleWorkersValue = removeOnlyIdleWorkers;
    if (removeOnlyIdleWorkersValue != null) {
      map['removeOnlyIdleWorkers'] = removeOnlyIdleWorkersValue;
    }
    map['scaleDownFactor'] = scaleDownFactor;
    final scaleDownMinWorkerFractionValue = scaleDownMinWorkerFraction;
    if (scaleDownMinWorkerFractionValue != null) {
      map['scaleDownMinWorkerFraction'] = scaleDownMinWorkerFractionValue;
    }
    map['scaleUpFactor'] = scaleUpFactor;
    final scaleUpMinWorkerFractionValue = scaleUpMinWorkerFraction;
    if (scaleUpMinWorkerFractionValue != null) {
      map['scaleUpMinWorkerFraction'] = scaleUpMinWorkerFractionValue;
    }
    return map;
  }

  factory SparkStandaloneAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return SparkStandaloneAutoscalingConfig(
      gracefulDecommissionTimeout: map['gracefulDecommissionTimeout'] as String,
      removeOnlyIdleWorkers: map['removeOnlyIdleWorkers'] == null
          ? null
          : map['removeOnlyIdleWorkers'] as bool,
      scaleDownFactor: map['scaleDownFactor'] as double,
      scaleDownMinWorkerFraction: map['scaleDownMinWorkerFraction'] == null
          ? null
          : map['scaleDownMinWorkerFraction'] as double,
      scaleUpFactor: map['scaleUpFactor'] as double,
      scaleUpMinWorkerFraction: map['scaleUpMinWorkerFraction'] == null
          ? null
          : map['scaleUpMinWorkerFraction'] as double,
    );
  }
}
