/// The granularity of rows in the report.
enum GranularityType {
  valueDaily("Daily"),
  valueHourly("Hourly");

  const GranularityType(this.value);
  final String value;

  static GranularityType fromValue(String value) {
    for (final item in GranularityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GranularityType value: $value');
  }
}

