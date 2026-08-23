/// Property action
enum StatefulRuleGroupOverrideAction {
  dROPTOALERT("DROP_TO_ALERT");

  const StatefulRuleGroupOverrideAction(this.wireValue);
  final String wireValue;

  static StatefulRuleGroupOverrideAction fromValue(String value) {
    for (final item in StatefulRuleGroupOverrideAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleGroupOverrideAction value: $value');
  }
}
