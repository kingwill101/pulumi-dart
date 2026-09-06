import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Disk Type
enum AzureDiskType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  standard("Standard"),
  standardSSD("StandardSSD"),
  premium("Premium"),
  standardOrPremium("StandardOrPremium"),
  ultra("Ultra"),
  premiumV2("PremiumV2");

  const AzureDiskType(this.wireValue);
  @override
  final String wireValue;

  static AzureDiskType fromValue(String value) {
    for (final item in AzureDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureDiskType value: $value');
  }
}
