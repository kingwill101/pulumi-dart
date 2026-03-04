/// Specifies the storage account type to be used to store the image. This property is not updatable.
enum EdgeZoneStorageAccountType {
  standardLRS("Standard_LRS"),
  standardZRS("Standard_ZRS"),
  standardSSDLRS("StandardSSD_LRS"),
  premiumLRS("Premium_LRS");

  const EdgeZoneStorageAccountType(this.wireValue);
  final String wireValue;

  static EdgeZoneStorageAccountType fromValue(String value) {
    for (final item in EdgeZoneStorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeZoneStorageAccountType value: $value');
  }
}
