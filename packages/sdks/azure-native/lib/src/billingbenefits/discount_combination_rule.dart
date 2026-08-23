/// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
enum DiscountCombinationRule {
  bestOf("BestOf"),
  stackable("Stackable");

  const DiscountCombinationRule(this.wireValue);
  final String wireValue;

  static DiscountCombinationRule fromValue(String value) {
    for (final item in DiscountCombinationRule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountCombinationRule value: $value');
  }
}
