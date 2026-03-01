/// [Required] Set target lags mode - Auto/Custom
enum TargetLagsMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const TargetLagsMode(this.value);
  final String value;

  static TargetLagsMode fromValue(String value) {
    for (final item in TargetLagsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetLagsMode value: $value');
  }
}

