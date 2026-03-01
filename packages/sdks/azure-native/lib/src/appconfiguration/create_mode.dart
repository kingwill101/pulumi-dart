/// Indicates whether the configuration store need to be recovered.
enum CreateMode {
  valueRecover("Recover"),
  valueDefault("Default");

  const CreateMode(this.value);
  final String value;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}

