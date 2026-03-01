// ignore_for_file: unused_element, unnecessary_cast

class AutoscalerAutoscalingPolicyLoadBalancingUtilization {
  /// Fraction of backend capacity utilization (set in HTTP(s) load
  /// balancing configuration) that autoscaler should maintain. Must
  /// be a positive float value. If not defined, the default is 0.8.
  final double target;

  /// Creates a new [AutoscalerAutoscalingPolicyLoadBalancingUtilization].
  /// [target] Fraction of backend capacity utilization (set in HTTP(s) load
  AutoscalerAutoscalingPolicyLoadBalancingUtilization({required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'target': target};
  }

  factory AutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalerAutoscalingPolicyLoadBalancingUtilization(
      target: map['target'] as double,
    );
  }
}
