/// [Required] TargetRollingWindowSiz detection mode.
enum TargetRollingWindowSizeMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const TargetRollingWindowSizeMode(this.value);
  final String value;

  static TargetRollingWindowSizeMode fromValue(String value) {
    for (final item in TargetRollingWindowSizeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetRollingWindowSizeMode value: $value');
  }
}

