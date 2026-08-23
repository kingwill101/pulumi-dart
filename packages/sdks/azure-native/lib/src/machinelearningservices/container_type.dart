/// The type of container to retrieve logs from.
enum ContainerType {
  storageInitializer("StorageInitializer"),
  inferenceServer("InferenceServer");

  const ContainerType(this.wireValue);
  final String wireValue;

  static ContainerType fromValue(String value) {
    for (final item in ContainerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerType value: $value');
  }
}
