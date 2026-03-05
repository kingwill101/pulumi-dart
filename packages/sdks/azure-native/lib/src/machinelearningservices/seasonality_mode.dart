/// [Required] Seasonality mode.
enum SeasonalityMode {
  valueAuto("Auto"),
  valueCustom("Custom");

  const SeasonalityMode(this.wireValue);
  final String wireValue;

  static SeasonalityMode fromValue(String value) {
    for (final item in SeasonalityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeasonalityMode value: $value');
  }
}

