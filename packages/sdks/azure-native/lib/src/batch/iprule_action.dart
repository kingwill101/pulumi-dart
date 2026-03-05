/// Action when client IP address is matched.
enum IPRuleAction {
  allow("Allow");

  const IPRuleAction(this.wireValue);
  final String wireValue;

  static IPRuleAction fromValue(String value) {
    for (final item in IPRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPRuleAction value: $value');
  }
}

