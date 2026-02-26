/// The action to take on matched requests.
enum IngressRuleAction2 {
  unspecifiedAction("UNSPECIFIED_ACTION"),
  allow("ALLOW"),
  deny("DENY");

  const IngressRuleAction2(this.value);
  final String value;

  static IngressRuleAction2 fromValue(String value) {
    for (final item in IngressRuleAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressRuleAction2 value: $value');
  }
}
