/// The sku name.
enum DiskStorageAccountTypes {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  ultraSSDLRS("UltraSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  standardSSDZRS("StandardSSD_ZRS"),
  premiumV2LRS("PremiumV2_LRS");

  const DiskStorageAccountTypes(this.value);
  final String value;

  static DiskStorageAccountTypes fromValue(String value) {
    for (final item in DiskStorageAccountTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageAccountTypes value: $value');
  }
}

