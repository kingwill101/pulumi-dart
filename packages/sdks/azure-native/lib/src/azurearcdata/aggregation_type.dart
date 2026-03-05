/// The aggregation type to use for the numerical columns in the dataset.
enum AggregationType {
  valueAverage("Average"),
  valueMinimum("Minimum"),
  valueMaximum("Maximum"),
  valueSum("Sum"),
  valueCount("Count");

  const AggregationType(this.wireValue);
  final String wireValue;

  static AggregationType fromValue(String value) {
    for (final item in AggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AggregationType value: $value');
  }
}

