/// Level of the status.
enum LevelType {
  valueError("Error"),
  valueWarning("Warning"),
  valueInformation("Information");

  const LevelType(this.value);
  final String value;

  static LevelType fromValue(String value) {
    for (final item in LevelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LevelType value: $value');
  }
}

