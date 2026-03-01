/// Type of storage assigned to a server. Allowed values are Premium_LRS, PremiumV2_LRS, or UltraSSD_LRS. If not specified, it defaults to Premium_LRS.
enum StorageType {
  premiumLRS("Premium_LRS"),
  premiumV2LRS("PremiumV2_LRS"),
  ultraSSDLRS("UltraSSD_LRS");

  const StorageType(this.value);
  final String value;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}

