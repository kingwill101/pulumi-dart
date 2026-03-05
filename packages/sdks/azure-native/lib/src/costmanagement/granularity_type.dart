/// The granularity of rows in the report.
enum GranularityType {
  valueDaily("Daily"),
  valueHourly("Hourly");

  const GranularityType(this.wireValue);
  final String wireValue;

  static GranularityType fromValue(String value) {
    for (final item in GranularityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GranularityType value: $value');
  }
}

