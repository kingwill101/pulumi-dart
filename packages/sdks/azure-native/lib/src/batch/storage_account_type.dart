/// The storage account type for use in creating data disks or OS disk.
enum StorageAccountType {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardSSDLRS("StandardSSD_LRS");

  const StorageAccountType(this.value);
  final String value;

  static StorageAccountType fromValue(String value) {
    for (final item in StorageAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountType value: $value');
  }
}

