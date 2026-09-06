import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server license type.
enum BillingPlan implements pulumi.PulumiEnum<String> {
  valuePAYG("PAYG"),
  valuePaid("Paid");

  const BillingPlan(this.wireValue);
  @override
  final String wireValue;

  static BillingPlan fromValue(String value) {
    for (final item in BillingPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingPlan value: $value');
  }
}
