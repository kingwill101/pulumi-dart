// ignore_for_file: unused_element, unnecessary_cast

/// Configuration parameters of autoscaling based on load balancing.
class AutoscalingPolicyLoadBalancingUtilizationResponse3 {
  /// Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  final double utilizationTarget;

  AutoscalingPolicyLoadBalancingUtilizationResponse3({
    required this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['utilizationTarget'] = utilizationTarget;
    return map;
  }

  factory AutoscalingPolicyLoadBalancingUtilizationResponse3.fromMap(
      Map<String, dynamic> map) {
    return AutoscalingPolicyLoadBalancingUtilizationResponse3(
      utilizationTarget: map['utilizationTarget'] as double,
    );
  }
}
