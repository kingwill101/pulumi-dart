/// Test coverage for the endpoint.
enum CoverageLevel {
  valueDefault("Default"),
  valueLow("Low"),
  valueBelowAverage("BelowAverage"),
  valueAverage("Average"),
  valueAboveAverage("AboveAverage"),
  valueFull("Full");

  const CoverageLevel(this.wireValue);
  final String wireValue;

  static CoverageLevel fromValue(String value) {
    for (final item in CoverageLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CoverageLevel value: $value');
  }
}
