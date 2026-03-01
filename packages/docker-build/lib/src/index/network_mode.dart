enum NetworkMode {
  valueDefault("default"),
  valueHost("host"),
  valueNone("none");

  const NetworkMode(this.value);
  final String value;

  static NetworkMode fromValue(String value) {
    for (final item in NetworkMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkMode value: $value');
  }
}

