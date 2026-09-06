import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku name
enum AzureDiskSkuName implements pulumi.PulumiEnum<String> {
  premiumLRS("Premium_LRS"),
  standardLRS("Standard_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  premiumV2LRS("PremiumV2_LRS"),
  standardSSDZRS("StandardSSD_ZRS");

  const AzureDiskSkuName(this.wireValue);
  @override
  final String wireValue;

  static AzureDiskSkuName fromValue(String value) {
    for (final item in AzureDiskSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureDiskSkuName value: $value');
  }
}
