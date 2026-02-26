/// The protocol of the load balancer to health check.
enum RRSetRoutingPolicyLoadBalancerTargetIpProtocol {
  undefined("undefined"),
  tcp("tcp"),
  udp("udp");

  const RRSetRoutingPolicyLoadBalancerTargetIpProtocol(this.value);
  final String value;

  static RRSetRoutingPolicyLoadBalancerTargetIpProtocol fromValue(
      String value) {
    for (final item in RRSetRoutingPolicyLoadBalancerTargetIpProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RRSetRoutingPolicyLoadBalancerTargetIpProtocol value: $value');
  }
}
