/// The artifact store type.
enum ArtifactStoreType {
  valueUnknown("Unknown"),
  valueAzureContainerRegistry("AzureContainerRegistry"),
  valueAzureStorageAccount("AzureStorageAccount");

  const ArtifactStoreType(this.wireValue);
  final String wireValue;

  static ArtifactStoreType fromValue(String value) {
    for (final item in ArtifactStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactStoreType value: $value');
  }
}
