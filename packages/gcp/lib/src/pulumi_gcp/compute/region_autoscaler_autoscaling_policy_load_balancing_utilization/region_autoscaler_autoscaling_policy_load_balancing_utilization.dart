// ignore_for_file: unused_element, unnecessary_cast

class RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization {
  /// Fraction of backend capacity utilization (set in HTTP(s) load
  /// balancing configuration) that autoscaler should maintain. Must
  /// be a positive float value. If not defined, the default is 0.8.
  final double target;

  RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['target'] = target;
    return map;
  }

  factory RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap(
      Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization(
      target: map['target'] as double,
    );
  }
}
