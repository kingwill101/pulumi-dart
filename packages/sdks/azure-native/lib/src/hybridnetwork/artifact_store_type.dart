/// The artifact store type.
enum ArtifactStoreType {
  valueUnknown("Unknown"),
  valueAzureContainerRegistry("AzureContainerRegistry"),
  valueAzureStorageAccount("AzureStorageAccount");

  const ArtifactStoreType(this.value);
  final String value;

  static ArtifactStoreType fromValue(String value) {
    for (final item in ArtifactStoreType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactStoreType value: $value');
  }
}

