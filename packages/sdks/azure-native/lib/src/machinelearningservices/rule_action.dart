/// The action enum for networking rule.
enum RuleAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const RuleAction(this.wireValue);
  final String wireValue;

  static RuleAction fromValue(String value) {
    for (final item in RuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction value: $value');
  }
}

