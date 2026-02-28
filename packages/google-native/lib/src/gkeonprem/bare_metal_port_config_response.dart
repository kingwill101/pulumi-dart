// ignore_for_file: unused_element, unnecessary_cast

/// Specifies load balancer ports for the bare metal user cluster.
class BareMetalPortConfigResponse {
  /// The port that control plane hosted load balancers will listen on.
  final int controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalPortConfigResponse].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalPortConfigResponse({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneLoadBalancerPort'] = controlPlaneLoadBalancerPort;
    return map;
  }

  factory BareMetalPortConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalPortConfigResponse(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
