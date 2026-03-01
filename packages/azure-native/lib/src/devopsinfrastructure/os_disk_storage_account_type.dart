/// The Azure SKU name of the machines in the pool.
enum OsDiskStorageAccountType {
  standard("Standard"),
  premium("Premium"),
  standardSSD("StandardSSD");

  const OsDiskStorageAccountType(this.value);
  final String value;

  static OsDiskStorageAccountType fromValue(String value) {
    for (final item in OsDiskStorageAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsDiskStorageAccountType value: $value');
  }
}

