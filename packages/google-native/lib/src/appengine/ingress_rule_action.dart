/// The action to take on matched requests.
enum IngressRuleAction {
  unspecifiedAction("UNSPECIFIED_ACTION"),
  allow("ALLOW"),
  deny("DENY");

  const IngressRuleAction(this.value);
  final String value;

  static IngressRuleAction fromValue(String value) {
    for (final item in IngressRuleAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressRuleAction value: $value');
  }
}
