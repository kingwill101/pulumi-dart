/// Azure Disk Type
enum AzureDiskType {
  unknown("Unknown"),
  standard("Standard"),
  standardSSD("StandardSSD"),
  premium("Premium"),
  standardOrPremium("StandardOrPremium"),
  ultra("Ultra"),
  premiumV2("PremiumV2");

  const AzureDiskType(this.wireValue);
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
