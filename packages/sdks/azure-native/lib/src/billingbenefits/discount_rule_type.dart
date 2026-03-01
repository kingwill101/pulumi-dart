/// The type of the priceable node pricing rule. Validation: Required. Supported values are fixedPriceLock, fixedListPrice, and priceCeiling.
enum DiscountRuleType {
  fixedPriceLock("FixedPriceLock"),
  fixedListPrice("FixedListPrice"),
  priceCeiling("PriceCeiling");

  const DiscountRuleType(this.value);
  final String value;

  static DiscountRuleType fromValue(String value) {
    for (final item in DiscountRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountRuleType value: $value');
  }
}

