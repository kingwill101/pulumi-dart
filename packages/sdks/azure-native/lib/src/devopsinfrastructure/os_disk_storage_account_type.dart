/// The Azure SKU name of the machines in the pool.
enum OsDiskStorageAccountType {
  standard("Standard"),
  premium("Premium"),
  standardSSD("StandardSSD");

  const OsDiskStorageAccountType(this.wireValue);
  final String wireValue;

  static OsDiskStorageAccountType fromValue(String value) {
    for (final item in OsDiskStorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsDiskStorageAccountType value: $value');
  }
}

