/// [Required] TargetRollingWindowSiz detection mode.
enum TargetRollingWindowSizeMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const TargetRollingWindowSizeMode(this.wireValue);
  final String wireValue;

  static TargetRollingWindowSizeMode fromValue(String value) {
    for (final item in TargetRollingWindowSizeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetRollingWindowSizeMode value: $value');
  }
}

