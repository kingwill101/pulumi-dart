/// Level of the status.
enum LevelType {
  valueError("Error"),
  valueWarning("Warning"),
  valueInformation("Information");

  const LevelType(this.wireValue);
  final String wireValue;

  static LevelType fromValue(String value) {
    for (final item in LevelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LevelType value: $value');
  }
}

