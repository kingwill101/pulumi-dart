import 'package:pulumi/pulumi.dart' as pulumi;

/// Expiration policy of the Credit
enum CreditExpirationPolicy implements pulumi.PulumiEnum<String> {
  none("None"),
  suspendBillingProfile("SuspendBillingProfile");

  const CreditExpirationPolicy(this.wireValue);
  @override
  final String wireValue;

  static CreditExpirationPolicy fromValue(String value) {
    for (final item in CreditExpirationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditExpirationPolicy value: $value');
  }
}
