import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol for the NAT rule
enum InboundNATRuleProtocol implements pulumi.PulumiEnum<String> {
  tCP("Tcp"),
  uDP("Udp");

  const InboundNATRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static InboundNATRuleProtocol fromValue(String value) {
    for (final item in InboundNATRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundNATRuleProtocol value: $value');
  }
}
