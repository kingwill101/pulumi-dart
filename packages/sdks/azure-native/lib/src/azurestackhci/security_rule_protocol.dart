/// Network protocol this rule applies to.
enum SecurityRuleProtocol {
  tcp("Tcp"),
  udp("Udp"),
  icmp("Icmp"),
  asterisk("*");

  const SecurityRuleProtocol(this.value);
  final String value;

  static SecurityRuleProtocol fromValue(String value) {
    for (final item in SecurityRuleProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleProtocol value: $value');
  }
}

