import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the subscription status of the product.
enum LicenseProfileSubscriptionStatus implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueEnabling("Enabling"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueDisabling("Disabling"),
  valueFailed("Failed");

  const LicenseProfileSubscriptionStatus(this.wireValue);
  @override
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
