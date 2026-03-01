/// Azure Disk Type
enum AzureDiskType {
  unknown("Unknown"),
  standard("Standard"),
  standardSSD("StandardSSD"),
  premium("Premium"),
  standardOrPremium("StandardOrPremium"),
  ultra("Ultra"),
  premiumV2("PremiumV2");

  const AzureDiskType(this.value);
  final String value;

  static AzureDiskType fromValue(String value) {
    for (final item in AzureDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureDiskType value: $value');
  }
}

