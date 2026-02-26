/// The protocol of the load balancer to health check.
enum RRSetRoutingPolicyLoadBalancerTargetIpProtocol2 {
  undefined("undefined"),
  tcp("tcp"),
  udp("udp");

  const RRSetRoutingPolicyLoadBalancerTargetIpProtocol2(this.value);
  final String value;

  static RRSetRoutingPolicyLoadBalancerTargetIpProtocol2 fromValue(
      String value) {
    for (final item in RRSetRoutingPolicyLoadBalancerTargetIpProtocol2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RRSetRoutingPolicyLoadBalancerTargetIpProtocol2 value: $value');
  }
}
