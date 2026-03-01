/// Property to select Azure Storage type. Available options: blobContainer.
enum FunctionsDeploymentStorageType {
  valueBlobContainer("blobContainer");

  const FunctionsDeploymentStorageType(this.value);
  final String value;

  static FunctionsDeploymentStorageType fromValue(String value) {
    for (final item in FunctionsDeploymentStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionsDeploymentStorageType value: $value');
  }
}

