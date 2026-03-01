/// The protocol of a Network Rule resource.
enum AzureFirewallNetworkRuleProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const AzureFirewallNetworkRuleProtocol(this.value);
  final String value;

  static AzureFirewallNetworkRuleProtocol fromValue(String value) {
    for (final item in AzureFirewallNetworkRuleProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallNetworkRuleProtocol value: $value');
  }
}

