import 'package:pulumi/pulumi.dart' as pulumi;

/// different billing cycles like MONTHLY/WEEKLY
enum BillingCycle implements pulumi.PulumiEnum<String> {
  valueWEEKLY("WEEKLY"),
  valueMONTHLY("MONTHLY");

  const BillingCycle(this.wireValue);
  @override
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
