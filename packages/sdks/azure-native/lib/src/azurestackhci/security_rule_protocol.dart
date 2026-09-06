import 'package:pulumi/pulumi.dart' as pulumi;

/// Network protocol this rule applies to.
enum SecurityRuleProtocol implements pulumi.PulumiEnum<String> {
  tcp("Tcp"),
  udp("Udp"),
  icmp("Icmp"),
  asterisk("*");

  const SecurityRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static SecurityRuleProtocol fromValue(String value) {
    for (final item in SecurityRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleProtocol value: $value');
  }
}
