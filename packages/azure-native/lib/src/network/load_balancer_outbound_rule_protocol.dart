/// The protocol for the outbound rule in load balancer.
enum LoadBalancerOutboundRuleProtocol {
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueAll("All");

  const LoadBalancerOutboundRuleProtocol(this.value);
  final String value;

  static LoadBalancerOutboundRuleProtocol fromValue(String value) {
    for (final item in LoadBalancerOutboundRuleProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerOutboundRuleProtocol value: $value');
  }
}

