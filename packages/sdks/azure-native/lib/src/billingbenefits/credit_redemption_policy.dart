import 'package:pulumi/pulumi.dart' as pulumi;

/// Redemption policy of the Credit
enum CreditRedemptionPolicy implements pulumi.PulumiEnum<String> {
  notApplicable("NotApplicable"),
  autoRedeem("AutoRedeem"),
  manualRedeem("ManualRedeem");

  const CreditRedemptionPolicy(this.wireValue);
  @override
  final String wireValue;

  static CreditRedemptionPolicy fromValue(String value) {
    for (final item in CreditRedemptionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreditRedemptionPolicy value: $value');
  }
}
