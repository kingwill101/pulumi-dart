// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminPortConfig is the specification of load balancer ports.
class BareMetalAdminPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int? controlPlaneLoadBalancerPort;

  BareMetalAdminPortConfig({
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

  factory BareMetalAdminPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] == null
          ? null
          : map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
