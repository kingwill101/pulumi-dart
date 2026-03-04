/// The parameter defining how if AutoML should handle short time series.
enum ShortSeriesHandlingConfiguration {
  valueNone("None"),
  valueAuto("Auto"),
  valuePad("Pad"),
  valueDrop("Drop");

  const ShortSeriesHandlingConfiguration(this.wireValue);
  final String wireValue;

  static ShortSeriesHandlingConfiguration fromValue(String value) {
    for (final item in ShortSeriesHandlingConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ShortSeriesHandlingConfiguration value: $value',
    );
  }
}
