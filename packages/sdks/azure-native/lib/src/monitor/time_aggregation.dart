/// Aggregation type. Relevant and required only for rules of the kind LogAlert.
enum TimeAggregation {
  count("Count"),
  average("Average"),
  minimum("Minimum"),
  maximum("Maximum"),
  total("Total");

  const TimeAggregation(this.wireValue);
  final String wireValue;

  static TimeAggregation fromValue(String value) {
    for (final item in TimeAggregation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeAggregation value: $value');
  }
}
