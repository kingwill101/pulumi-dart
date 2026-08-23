/// Property action
enum StatefulRuleAction {
  aLERT("ALERT"),
  dROP("DROP"),
  pASS("PASS"),
  rEJECT("REJECT");

  const StatefulRuleAction(this.wireValue);
  final String wireValue;

  static StatefulRuleAction fromValue(String value) {
    for (final item in StatefulRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleAction value: $value');
  }
}
