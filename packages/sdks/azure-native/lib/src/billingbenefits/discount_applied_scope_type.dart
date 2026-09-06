import 'package:pulumi/pulumi.dart' as pulumi;

/// List of applied scopes supported for discounts.
enum DiscountAppliedScopeType implements pulumi.PulumiEnum<String> {
  billingAccount("BillingAccount"),
  billingProfile("BillingProfile"),
  customer("Customer");

  const DiscountAppliedScopeType(this.wireValue);
  @override
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
