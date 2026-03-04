/// The sku name.
enum DiskStorageAccountTypes {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  standardSSDZRS("StandardSSD_ZRS"),
  premiumV2LRS("PremiumV2_LRS");

  const DiskStorageAccountTypes(this.wireValue);
  final String wireValue;

  static DiskStorageAccountTypes fromValue(String value) {
    for (final item in DiskStorageAccountTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageAccountTypes value: $value');
  }
}
