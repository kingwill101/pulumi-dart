/// Action when client IP address is matched.
enum IPRuleAction {
  allow("Allow");

  const IPRuleAction(this.value);
  final String value;

  static IPRuleAction fromValue(String value) {
    for (final item in IPRuleAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPRuleAction value: $value');
  }
}

