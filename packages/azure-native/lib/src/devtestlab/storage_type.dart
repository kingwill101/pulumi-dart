/// The storage type for the disk (i.e. Standard, Premium).
enum StorageType {
  standard("Standard"),
  premium("Premium"),
  standardSSD("StandardSSD");

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

