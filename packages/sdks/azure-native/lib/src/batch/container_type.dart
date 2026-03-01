/// The container technology to be used.
enum ContainerType {
  dockerCompatible("DockerCompatible"),
  criCompatible("CriCompatible");

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

