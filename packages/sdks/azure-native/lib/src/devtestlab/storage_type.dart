/// The storage type for the disk (i.e. Standard, Premium).
enum StorageType {
  standard("Standard"),
  premium("Premium"),
  standardSSD("StandardSSD");

  const StorageType(this.wireValue);
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}

