/// Property action
enum StatefulRuleGroupOverrideAction {
  dROPTOALERT("DROP_TO_ALERT");

  const StatefulRuleGroupOverrideAction(this.value);
  final String value;

  static StatefulRuleGroupOverrideAction fromValue(String value) {
    for (final item in StatefulRuleGroupOverrideAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleGroupOverrideAction value: $value');
  }
}

