// ignore_for_file: unused_element, unnecessary_cast

/// Specifies load balancer ports for the bare metal user cluster.
class BareMetalPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int? controlPlaneLoadBalancerPort;

  BareMetalPortConfig({
    this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneLoadBalancerPortValue = controlPlaneLoadBalancerPort;
    if (controlPlaneLoadBalancerPortValue != null) {
      map['controlPlaneLoadBalancerPort'] = controlPlaneLoadBalancerPortValue;
    }
    return map;
  }

  factory BareMetalPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] == null
          ? null
          : map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
