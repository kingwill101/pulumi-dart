/// The type of load balancer specified by this target. This value must match the configuration of the load balancer located at the LoadBalancerTarget's IP address, port, and region. Use the following: - *regionalL4ilb*: for a regional internal passthrough Network Load Balancer. - *regionalL7ilb*: for a regional internal Application Load Balancer. - *globalL7ilb*: for a global internal Application Load Balancer.
enum RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2 {
  none("none"),
  globalL7ilb("globalL7ilb"),
  regionalL4ilb("regionalL4ilb"),
  regionalL7ilb("regionalL7ilb");

  const RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2(
      this.value);
  final String value;

  static RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2
      fromValue(String value) {
    for (final item
        in RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RRSetRoutingPolicyLoadBalancerTargetLoadBalancerTypeDnsV1beta2 value: $value');
  }
}
