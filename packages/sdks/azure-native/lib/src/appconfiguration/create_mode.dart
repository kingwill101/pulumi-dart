/// Indicates whether the configuration store need to be recovered.
enum CreateMode {
  valueRecover("Recover"),
  valueDefault("Default");

  const CreateMode(this.wireValue);
  final String wireValue;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}
