/// Property ruleOrder
enum StatefulRuleOptionsRuleOrder {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulRuleOptionsRuleOrder(this.wireValue);
  final String wireValue;

  static StatefulRuleOptionsRuleOrder fromValue(String value) {
    for (final item in StatefulRuleOptionsRuleOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleOptionsRuleOrder value: $value');
  }
}

