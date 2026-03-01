/// Protocol for the NAT rule
enum InboundNATRuleProtocol {
  tCP("Tcp"),
  uDP("Udp");

  const InboundNATRuleProtocol(this.value);
  final String value;

  static InboundNATRuleProtocol fromValue(String value) {
    for (final item in InboundNATRuleProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundNATRuleProtocol value: $value');
  }
}

