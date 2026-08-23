enum StorageAccountAccessTier {
  valueArchive("Archive");

  const StorageAccountAccessTier(this.wireValue);
  final String wireValue;

  static StorageAccountAccessTier fromValue(String value) {
    for (final item in StorageAccountAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountAccessTier value: $value');
  }
}
