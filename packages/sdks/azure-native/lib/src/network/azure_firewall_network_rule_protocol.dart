import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol of a Network Rule resource.
enum AzureFirewallNetworkRuleProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const AzureFirewallNetworkRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static AzureFirewallNetworkRuleProtocol fromValue(String value) {
    for (final item in AzureFirewallNetworkRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFirewallNetworkRuleProtocol value: $value');
  }
}
