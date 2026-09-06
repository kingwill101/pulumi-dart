import 'package:pulumi/pulumi.dart' as pulumi;

/// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
enum ScrubbingRuleEntryMatchOperator implements pulumi.PulumiEnum<String> {
  equalsAny("EqualsAny"),
  equals("Equals");

  const ScrubbingRuleEntryMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static ScrubbingRuleEntryMatchOperator fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryMatchOperator value: $value');
  }
}
