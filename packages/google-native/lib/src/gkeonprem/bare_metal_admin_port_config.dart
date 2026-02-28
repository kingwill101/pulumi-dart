// ignore_for_file: unused_element, unnecessary_cast


/// BareMetalAdminPortConfig is the specification of load balancer ports.
class BareMetalAdminPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final int? controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalAdminPortConfig({
    this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': ?controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminPortConfig(
      controlPlaneLoadBalancerPort: map['controlPlaneLoadBalancerPort'] == null ? null : map['controlPlaneLoadBalancerPort'] as int,
    );
  }
}

