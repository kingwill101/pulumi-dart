/// Property action
enum StatefulRuleAction {
  aLERT("ALERT"),
  dROP("DROP"),
  pASS("PASS"),
  rEJECT("REJECT");

  const StatefulRuleAction(this.value);
  final String value;

  static StatefulRuleAction fromValue(String value) {
    for (final item in StatefulRuleAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleAction value: $value');
  }
}

