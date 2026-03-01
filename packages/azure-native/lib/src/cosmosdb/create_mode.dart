/// Enum to indicate the mode of resource creation.
enum CreateMode {
  valueDefault("Default"),
  valueRestore("Restore");

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

