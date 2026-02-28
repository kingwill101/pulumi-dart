// ignore_for_file: unused_element, unnecessary_cast

/// CPU utilization policy.
class AutoscalingPolicyCpuUtilizationResponse {
  /// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
  final String predictiveMethod;

  /// The target CPU utilization that the autoscaler maintains. Must be a float value in the range (0, 1]. If not specified, the default is 0.6. If the CPU level is below the target utilization, the autoscaler scales in the number of instances until it reaches the minimum number of instances you specified or until the average CPU of your instances reaches the target utilization. If the average CPU is above the target utilization, the autoscaler scales out until it reaches the maximum number of instances you specified or until the average utilization reaches the target utilization.
  final double utilizationTarget;

  /// Creates a new [AutoscalingPolicyCpuUtilizationResponse].
  /// [predictiveMethod] Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
  /// [utilizationTarget] The target CPU utilization that the autoscaler maintains. Must be a float value in the range (0, 1]. If not specified, the default is 0.6. If the CPU level is below the target utilization, the autoscaler scales in the number of instances until it reaches the minimum number of instances you specified or until the average CPU of your instances reaches the target utilization. If the average CPU is above the target utilization, the autoscaler scales out until it reaches the maximum number of instances you specified or until the average utilization reaches the target utilization.
  AutoscalingPolicyCpuUtilizationResponse({
    required this.predictiveMethod,
    required this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predictiveMethod'] = predictiveMethod;
    map['utilizationTarget'] = utilizationTarget;
    return map;
  }

  factory AutoscalingPolicyCpuUtilizationResponse.fromMap(
      Map<String, dynamic> map) {
    return AutoscalingPolicyCpuUtilizationResponse(
      predictiveMethod: map['predictiveMethod'] as String,
      utilizationTarget: map['utilizationTarget'] as double,
    );
  }
}
