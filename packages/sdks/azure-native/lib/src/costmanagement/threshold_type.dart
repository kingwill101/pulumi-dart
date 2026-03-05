/// The type of threshold.
///
/// Supported for CategoryType(s): Cost.
enum ThresholdType {
  actual("Actual"),
  forecasted("Forecasted");

  const ThresholdType(this.wireValue);
  final String wireValue;

  static ThresholdType fromValue(String value) {
    for (final item in ThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdType value: $value');
  }
}

