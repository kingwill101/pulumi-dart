/// IP Protocol that the rule must load-balance
enum LoadBalancerRuleTransportProtocol {
  tCP("Tcp"),
  uDP("Udp"),
  all("All");

  const LoadBalancerRuleTransportProtocol(this.value);
  final String value;

  static LoadBalancerRuleTransportProtocol fromValue(String value) {
    for (final item in LoadBalancerRuleTransportProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerRuleTransportProtocol value: $value');
  }
}

