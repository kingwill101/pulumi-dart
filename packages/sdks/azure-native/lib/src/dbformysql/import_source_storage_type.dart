/// Storage type of import source.
enum ImportSourceStorageType {
  valueAzureBlob("AzureBlob");

  const ImportSourceStorageType(this.wireValue);
  final String wireValue;

  static ImportSourceStorageType fromValue(String value) {
    for (final item in ImportSourceStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSourceStorageType value: $value');
  }
}
