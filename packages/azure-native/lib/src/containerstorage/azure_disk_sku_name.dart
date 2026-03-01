/// Sku name
enum AzureDiskSkuName {
  premiumLRS("Premium_LRS"),
  standardLRS("Standard_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  premiumV2LRS("PremiumV2_LRS"),
  standardSSDZRS("StandardSSD_ZRS");

  const AzureDiskSkuName(this.value);
  final String value;

  static AzureDiskSkuName fromValue(String value) {
    for (final item in AzureDiskSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureDiskSkuName value: $value');
  }
}

