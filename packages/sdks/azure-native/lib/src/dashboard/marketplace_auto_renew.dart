import 'package:pulumi/pulumi.dart' as pulumi;

/// The AutoRenew setting of the Enterprise subscription
enum MarketplaceAutoRenew implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const MarketplaceAutoRenew(this.wireValue);
  @override
  final String wireValue;

  static MarketplaceAutoRenew fromValue(String value) {
    for (final item in MarketplaceAutoRenew.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceAutoRenew value: $value');
  }
}
