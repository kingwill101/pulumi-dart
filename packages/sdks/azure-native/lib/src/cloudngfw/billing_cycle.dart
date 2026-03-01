/// different billing cycles like MONTHLY/WEEKLY
enum BillingCycle {
  valueWEEKLY("WEEKLY"),
  valueMONTHLY("MONTHLY");

  const BillingCycle(this.value);
  final String value;

  static BillingCycle fromValue(String value) {
    for (final item in BillingCycle.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingCycle value: $value');
  }
}

