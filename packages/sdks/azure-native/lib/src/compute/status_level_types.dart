/// The level code.
enum StatusLevelTypes {
  valueInfo("Info"),
  valueWarning("Warning"),
  valueError("Error");

  const StatusLevelTypes(this.value);
  final String value;

  static StatusLevelTypes fromValue(String value) {
    for (final item in StatusLevelTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusLevelTypes value: $value');
  }
}

