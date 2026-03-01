/// Expiration policy of the Credit
enum CreditExpirationPolicy {
  valueNone("None"),
  valueSuspendBillingProfile("SuspendBillingProfile");

  const CreditExpirationPolicy(this.value);
  final String value;

  static CreditExpirationPolicy fromValue(String value) {
    for (final item in CreditExpirationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditExpirationPolicy value: $value');
  }
}

