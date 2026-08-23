/// Protocol for the NAT rule
enum InboundNATRuleProtocol {
  tCP("Tcp"),
  uDP("Udp");

  const InboundNATRuleProtocol(this.wireValue);
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
