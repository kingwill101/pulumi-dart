import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
enum DiscountRuleType implements pulumi.PulumiEnum<String> {
  fixedPriceLock("FixedPriceLock"),
  fixedListPrice("FixedListPrice"),
  priceCeiling("PriceCeiling");

  const DiscountRuleType(this.wireValue);
  @override
  final String wireValue;

  static DiscountRuleType fromValue(String value) {
    for (final item in DiscountRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountRuleType value: $value');
  }
}
