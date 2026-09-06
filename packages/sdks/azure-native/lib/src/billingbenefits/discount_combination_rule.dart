import 'package:pulumi/pulumi.dart' as pulumi;

/// The discount combination rule when there are multiple applicable custom prices. Validation: Required. Supported values are Stackable and BestOf.
enum DiscountCombinationRule implements pulumi.PulumiEnum<String> {
  bestOf("BestOf"),
  stackable("Stackable");

  const DiscountCombinationRule(this.wireValue);
  @override
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
