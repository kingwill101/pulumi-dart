// ignore_for_file: unused_element, unnecessary_cast

/// Configuration parameters of autoscaling based on load balancing.
class AutoscalingPolicyLoadBalancingUtilizationComputeBeta {
  /// Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  final double? utilizationTarget;

  /// Creates a new [AutoscalingPolicyLoadBalancingUtilizationComputeBeta].
  /// [utilizationTarget] Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  AutoscalingPolicyLoadBalancingUtilizationComputeBeta({
    this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'utilizationTarget': ?utilizationTarget};
  }

  factory AutoscalingPolicyLoadBalancingUtilizationComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingPolicyLoadBalancingUtilizationComputeBeta(
      utilizationTarget: map['utilizationTarget'] == null
          ? null
          : map['utilizationTarget'] as double,
    );
  }
}
