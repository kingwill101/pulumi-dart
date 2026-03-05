/// SQL Server license type.
enum BillingPlan {
  valuePAYG("PAYG"),
  valuePaid("Paid");

  const BillingPlan(this.wireValue);
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

