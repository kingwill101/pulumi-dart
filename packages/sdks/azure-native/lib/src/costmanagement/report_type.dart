/// The type of the report. Usage represents actual usage, forecast represents forecasted data and UsageAndForecast represents both usage and forecasted data. Actual usage and forecasted data can be differentiated based on dates.
enum ReportType {
  valueUsage("Usage");

  const ReportType(this.wireValue);
  final String wireValue;

  static ReportType fromValue(String value) {
    for (final item in ReportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportType value: $value');
  }
}
