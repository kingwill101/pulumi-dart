/// The granularity of rows in the report.
enum ReportGranularityType {
  valueDaily("Daily"),
  valueMonthly("Monthly");

  const ReportGranularityType(this.wireValue);
  final String wireValue;

  static ReportGranularityType fromValue(String value) {
    for (final item in ReportGranularityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportGranularityType value: $value');
  }
}

