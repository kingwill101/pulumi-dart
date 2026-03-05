/// The container type of the sessions.
enum ContainerType {
  valueCustomContainer("CustomContainer"),
  valuePythonLTS("PythonLTS");

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

