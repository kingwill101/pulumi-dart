/// Type of temporal aggregation.
enum TemporalAggregationType {
  average("Average"),
  min("Min"),
  max("Max"),
  sum("Sum"),
  rate("Rate"),
  iRate("IRate"),
  delta("Delta"),
  iDelta("IDelta"),
  increase("Increase");

  const TemporalAggregationType(this.wireValue);
  final String wireValue;

  static TemporalAggregationType fromValue(String value) {
    for (final item in TemporalAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemporalAggregationType value: $value');
  }
}
