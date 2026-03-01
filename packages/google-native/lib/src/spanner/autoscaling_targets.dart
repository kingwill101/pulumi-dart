// ignore_for_file: unused_element, unnecessary_cast

/// The autoscaling targets for an instance.
class AutoscalingTargets {
  /// The target high priority cpu utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  final int highPriorityCpuUtilizationPercent;

  /// The target storage utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 100] inclusive.
  final int storageUtilizationPercent;

  /// Creates a new [AutoscalingTargets].
  /// [highPriorityCpuUtilizationPercent] The target high priority cpu utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  /// [storageUtilizationPercent] The target storage utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 100] inclusive.
  AutoscalingTargets({
    required this.highPriorityCpuUtilizationPercent,
    required this.storageUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highPriorityCpuUtilizationPercent': highPriorityCpuUtilizationPercent,
      'storageUtilizationPercent': storageUtilizationPercent,
    };
  }

  factory AutoscalingTargets.fromMap(Map<String, dynamic> map) {
    return AutoscalingTargets(
      highPriorityCpuUtilizationPercent:
          map['highPriorityCpuUtilizationPercent'] as int,
      storageUtilizationPercent: map['storageUtilizationPercent'] as int,
    );
  }
}
