import 'package:pulumi/pulumi.dart' as pulumi;

/// Property ruleOrder
enum StatefulEngineOptionsRuleOrder implements pulumi.PulumiEnum<String> {
  dEFAULTACTIONORDER("DEFAULT_ACTION_ORDER"),
  sTRICTORDER("STRICT_ORDER");

  const StatefulEngineOptionsRuleOrder(this.wireValue);
  @override
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
