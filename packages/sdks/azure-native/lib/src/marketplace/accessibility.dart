/// Plan accessibility
enum Accessibility {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivateTenantOnLevel("PrivateTenantOnLevel"),
  valuePrivateSubscriptionOnLevel("PrivateSubscriptionOnLevel");

  const Accessibility(this.value);
  final String value;

  static Accessibility fromValue(String value) {
    for (final item in Accessibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Accessibility value: $value');
  }
}

