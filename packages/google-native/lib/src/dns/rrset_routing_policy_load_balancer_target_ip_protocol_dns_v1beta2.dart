/// The protocol of the load balancer to health check.
enum RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2 {
  undefined("undefined"),
  tcp("tcp"),
  udp("udp");

  const RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2(this.value);
  final String value;

  static RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2 fromValue(
    String value,
  ) {
    for (final item
        in RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RRSetRoutingPolicyLoadBalancerTargetIpProtocolDnsV1beta2 value: $value',
    );
  }
}
