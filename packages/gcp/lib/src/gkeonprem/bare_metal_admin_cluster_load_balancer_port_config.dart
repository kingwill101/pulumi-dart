// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminClusterLoadBalancerPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalAdminClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminClusterLoadBalancerPortConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterLoadBalancerPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
