/// The container type of the sessions.
enum ContainerType {
  valueCustomContainer("CustomContainer"),
  valuePythonLTS("PythonLTS");

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

