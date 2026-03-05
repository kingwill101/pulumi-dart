/// Plan accessibility
enum Accessibility {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivateTenantOnLevel("PrivateTenantOnLevel"),
  valuePrivateSubscriptionOnLevel("PrivateSubscriptionOnLevel");

  const Accessibility(this.wireValue);
  final String wireValue;

  static Accessibility fromValue(String value) {
    for (final item in Accessibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Accessibility value: $value');
  }
}

