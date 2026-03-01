/// [Required] Set forecast horizon value selection mode.
enum ForecastHorizonMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const ForecastHorizonMode(this.value);
  final String value;

  static ForecastHorizonMode fromValue(String value) {
    for (final item in ForecastHorizonMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastHorizonMode value: $value');
  }
}

