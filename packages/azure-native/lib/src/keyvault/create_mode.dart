/// The vault's create mode to indicate whether the vault need to be recovered or not.
enum CreateMode {
  valueRecover("recover"),
  valueDefault("default");

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

