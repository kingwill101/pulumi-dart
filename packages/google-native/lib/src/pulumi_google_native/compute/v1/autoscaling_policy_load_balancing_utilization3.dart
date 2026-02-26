// ignore_for_file: unused_element, unnecessary_cast

/// Configuration parameters of autoscaling based on load balancing.
class AutoscalingPolicyLoadBalancingUtilization3 {
  /// Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  final double? utilizationTarget;

  AutoscalingPolicyLoadBalancingUtilization3({
    this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final utilizationTargetValue = utilizationTarget;
    if (utilizationTargetValue != null) {
      map['utilizationTarget'] = utilizationTargetValue;
    }
    return map;
  }

  factory AutoscalingPolicyLoadBalancingUtilization3.fromMap(
      Map<String, dynamic> map) {
    return AutoscalingPolicyLoadBalancingUtilization3(
      utilizationTarget: map['utilizationTarget'] == null
          ? null
          : map['utilizationTarget'] as double,
    );
  }
}
