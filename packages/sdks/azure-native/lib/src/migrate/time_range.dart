/// Time Range for which the historic utilization data should be considered for
/// assessment.
enum TimeRange {
  day("Day"),
  week("Week"),
  month("Month"),
  custom("Custom");

  const TimeRange(this.wireValue);
  final String wireValue;

  static TimeRange fromValue(String value) {
    for (final item in TimeRange.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeRange value: $value');
  }
}

