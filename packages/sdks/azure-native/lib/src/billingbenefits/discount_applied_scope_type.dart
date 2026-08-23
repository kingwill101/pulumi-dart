/// List of applied scopes supported for discounts.
enum DiscountAppliedScopeType {
  billingAccount("BillingAccount"),
  billingProfile("BillingProfile"),
  customer("Customer");

  const DiscountAppliedScopeType(this.wireValue);
  final String wireValue;

  static DiscountAppliedScopeType fromValue(String value) {
    for (final item in DiscountAppliedScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountAppliedScopeType value: $value');
  }
}
