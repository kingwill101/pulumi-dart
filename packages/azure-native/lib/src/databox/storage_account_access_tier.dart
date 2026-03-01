enum StorageAccountAccessTier {
  valueArchive("Archive");

  const StorageAccountAccessTier(this.value);
  final String value;

  static StorageAccountAccessTier fromValue(String value) {
    for (final item in StorageAccountAccessTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountAccessTier value: $value');
  }
}

