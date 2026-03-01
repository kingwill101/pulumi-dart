/// The type of container to retrieve logs from.
enum ContainerType {
  valueStorageInitializer("StorageInitializer"),
  valueInferenceServer("InferenceServer");

  const ContainerType(this.value);
  final String value;

  static ContainerType fromValue(String value) {
    for (final item in ContainerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerType value: $value');
  }
}

