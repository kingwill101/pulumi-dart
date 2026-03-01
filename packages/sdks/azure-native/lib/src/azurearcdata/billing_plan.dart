/// SQL Server license type.
enum BillingPlan {
  valuePAYG("PAYG"),
  valuePaid("Paid");

  const BillingPlan(this.value);
  final String value;

  static BillingPlan fromValue(String value) {
    for (final item in BillingPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingPlan value: $value');
  }
}

