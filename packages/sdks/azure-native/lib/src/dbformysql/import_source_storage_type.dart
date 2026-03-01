/// Storage type of import source.
enum ImportSourceStorageType {
  valueAzureBlob("AzureBlob");

  const ImportSourceStorageType(this.value);
  final String value;

  static ImportSourceStorageType fromValue(String value) {
    for (final item in ImportSourceStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSourceStorageType value: $value');
  }
}

