/// Required. Type of subscription.
enum SubscriptionType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  trial("TRIAL"),
  paid("PAID"),
  allowlist("ALLOWLIST");

  const SubscriptionType(this.value);
  final String value;

  static SubscriptionType fromValue(String value) {
    for (final item in SubscriptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionType value: $value');
  }
}
