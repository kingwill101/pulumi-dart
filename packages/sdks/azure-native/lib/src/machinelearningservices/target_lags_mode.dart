/// [Required] Set target lags mode - Auto/Custom
enum TargetLagsMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const TargetLagsMode(this.wireValue);
  final String wireValue;

  static TargetLagsMode fromValue(String value) {
    for (final item in TargetLagsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetLagsMode value: $value');
  }
}
