// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int controlPlaneLoadBalancerPort;

  BareMetalAdminClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneLoadBalancerPort'] = controlPlaneLoadBalancerPort;
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerPortConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
