/// Gets or sets the storage provider type on the target.
/// Applicable when StorageProjectionType is not ContainerFileSystem.
enum TargetHydrationStorageProviderType {
  valueAzureFileShare("AzureFileShare");

  const TargetHydrationStorageProviderType(this.value);
  final String value;

  static TargetHydrationStorageProviderType fromValue(String value) {
    for (final item in TargetHydrationStorageProviderType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetHydrationStorageProviderType value: $value');
  }
}

