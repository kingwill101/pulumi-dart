/// Property ruleOrder
enum StatefulEngineOptionsRuleOrder {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulEngineOptionsRuleOrder(this.value);
  final String value;

  static StatefulEngineOptionsRuleOrder fromValue(String value) {
    for (final item in StatefulEngineOptionsRuleOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulEngineOptionsRuleOrder value: $value');
  }
}

