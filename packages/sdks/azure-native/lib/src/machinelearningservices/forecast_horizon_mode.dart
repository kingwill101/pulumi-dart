/// [Required] Set forecast horizon value selection mode.
enum ForecastHorizonMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const ForecastHorizonMode(this.wireValue);
  final String wireValue;

  static ForecastHorizonMode fromValue(String value) {
    for (final item in ForecastHorizonMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastHorizonMode value: $value');
  }
}
