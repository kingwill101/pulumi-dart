// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterLoadBalancerPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalClusterLoadBalancerPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneLoadBalancerPort'] = controlPlaneLoadBalancerPort;
    return map;
  }

  factory BareMetalClusterLoadBalancerPortConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
