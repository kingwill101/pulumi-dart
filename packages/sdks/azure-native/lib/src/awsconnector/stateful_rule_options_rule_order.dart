import 'package:pulumi/pulumi.dart' as pulumi;

/// Property ruleOrder
enum StatefulRuleOptionsRuleOrder implements pulumi.PulumiEnum<String> {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulRuleOptionsRuleOrder(this.wireValue);
  @override
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
