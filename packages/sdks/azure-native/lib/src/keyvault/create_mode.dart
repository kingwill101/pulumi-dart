/// The vault's create mode to indicate whether the vault need to be recovered or not.
enum CreateMode {
  valueRecover("recover"),
  valueDefault("default");

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
