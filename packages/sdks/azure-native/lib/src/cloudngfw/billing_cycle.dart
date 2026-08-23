/// different billing cycles like MONTHLY/WEEKLY
enum BillingCycle {
  valueWEEKLY("WEEKLY"),
  valueMONTHLY("MONTHLY");

  const BillingCycle(this.wireValue);
  final String wireValue;

  static BillingCycle fromValue(String value) {
    for (final item in BillingCycle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingCycle value: $value');
  }
}
