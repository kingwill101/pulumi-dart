/// The storage Account type to be used for the data disk. If omitted, the default is "standard_lrs".
enum StorageAccountType {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS"),
  premiumZRS("Premium_ZRS"),
  standardSSDZRS("StandardSSD_ZRS");

  const StorageAccountType(this.wireValue);
  final String wireValue;

  static StorageAccountType fromValue(String value) {
    for (final item in StorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountType value: $value');
  }
}

