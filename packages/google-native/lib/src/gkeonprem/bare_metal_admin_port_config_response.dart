// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminPortConfig is the specification of load balancer ports.
class BareMetalAdminPortConfigResponse {
  /// The port that control plane hosted load balancers will listen on.
  final int controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminPortConfigResponse].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalAdminPortConfigResponse({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminPortConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminPortConfigResponse(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}
