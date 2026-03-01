/// Property ruleOrder
enum StatefulRuleOptionsRuleOrder {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulRuleOptionsRuleOrder(this.value);
  final String value;

  static StatefulRuleOptionsRuleOrder fromValue(String value) {
    for (final item in StatefulRuleOptionsRuleOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleOptionsRuleOrder value: $value');
  }
}

