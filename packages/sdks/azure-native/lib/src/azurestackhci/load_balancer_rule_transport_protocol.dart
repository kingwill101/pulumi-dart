import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Protocol that the rule must load-balance
enum LoadBalancerRuleTransportProtocol implements pulumi.PulumiEnum<String> {
  tCP("Tcp"),
  uDP("Udp"),
  all("All");

  const LoadBalancerRuleTransportProtocol(this.wireValue);
  @override
  final String wireValue;

  static LoadBalancerRuleTransportProtocol fromValue(String value) {
    for (final item in LoadBalancerRuleTransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerRuleTransportProtocol value: $value');
  }
}
