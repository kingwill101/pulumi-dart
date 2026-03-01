/// The action enum for networking rule.
enum RuleAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const RuleAction(this.value);
  final String value;

  static RuleAction fromValue(String value) {
    for (final item in RuleAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction value: $value');
  }
}

