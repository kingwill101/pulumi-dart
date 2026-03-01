/// time aggregation type. How the data that is collected should be combined over time. The default value is Average.
enum TimeAggregationType {
  valueAverage("Average"),
  valueMinimum("Minimum"),
  valueMaximum("Maximum"),
  valueTotal("Total"),
  valueCount("Count"),
  valueLast("Last");

  const TimeAggregationType(this.value);
  final String value;

  static TimeAggregationType fromValue(String value) {
    for (final item in TimeAggregationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeAggregationType value: $value');
  }
}

