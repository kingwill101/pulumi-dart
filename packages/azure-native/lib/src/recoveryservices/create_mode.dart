/// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
enum CreateMode {
  valueInvalid("Invalid"),
  valueDefault("Default"),
  valueRecover("Recover");

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

