/// The type of threshold
enum ThresholdType {
  actual("Actual"),
  forecasted("Forecasted");

  const ThresholdType(this.value);
  final String value;

  static ThresholdType fromValue(String value) {
    for (final item in ThresholdType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdType value: $value');
  }
}

