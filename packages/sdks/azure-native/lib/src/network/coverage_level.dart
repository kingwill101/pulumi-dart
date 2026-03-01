/// Test coverage for the endpoint.
enum CoverageLevel {
  valueDefault("Default"),
  valueLow("Low"),
  valueBelowAverage("BelowAverage"),
  valueAverage("Average"),
  valueAboveAverage("AboveAverage"),
  valueFull("Full");

  const CoverageLevel(this.value);
  final String value;

  static CoverageLevel fromValue(String value) {
    for (final item in CoverageLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CoverageLevel value: $value');
  }
}

