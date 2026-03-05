/// Expiration policy of the Credit
enum CreditExpirationPolicy {
  valueNone("None"),
  valueSuspendBillingProfile("SuspendBillingProfile");

  const CreditExpirationPolicy(this.wireValue);
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

