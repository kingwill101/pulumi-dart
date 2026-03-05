/// Indicates the subscription status of the product.
enum LicenseProfileSubscriptionStatus {
  valueUnknown("Unknown"),
  valueEnabling("Enabling"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueDisabling("Disabling"),
  valueFailed("Failed");

  const LicenseProfileSubscriptionStatus(this.wireValue);
  final String wireValue;

  static LicenseProfileSubscriptionStatus fromValue(String value) {
    for (final item in LicenseProfileSubscriptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseProfileSubscriptionStatus value: $value');
  }
}

