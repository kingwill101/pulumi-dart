import 'package:pulumi/pulumi.dart' as pulumi;

/// Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to.
enum ManagedRuleExclusionSelectorMatchOperator implements pulumi.PulumiEnum<String> {
  equals("Equals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith"),
  equalsAny("EqualsAny");

  const ManagedRuleExclusionSelectorMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ManagedRuleExclusionSelectorMatchOperator fromValue(String value) {
    for (final item in ManagedRuleExclusionSelectorMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionSelectorMatchOperator value: $value');
  }
}
