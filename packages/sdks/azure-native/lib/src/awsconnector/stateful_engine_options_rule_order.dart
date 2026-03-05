/// Property ruleOrder
enum StatefulEngineOptionsRuleOrder {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulEngineOptionsRuleOrder(this.wireValue);
  final String wireValue;

  static StatefulEngineOptionsRuleOrder fromValue(String value) {
    for (final item in StatefulEngineOptionsRuleOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulEngineOptionsRuleOrder value: $value');
  }
}

