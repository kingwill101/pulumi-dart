/// Enum to indicate the mode of resource creation.
enum CreateMode {
  valueDefault("Default"),
  valueRestore("Restore");

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
