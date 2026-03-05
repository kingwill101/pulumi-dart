/// The type of container to retrieve logs from.
enum ContainerType {
  valueStorageInitializer("StorageInitializer"),
  valueInferenceServer("InferenceServer");

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

