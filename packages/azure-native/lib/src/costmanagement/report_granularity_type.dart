/// The granularity of rows in the report.
enum ReportGranularityType {
  valueDaily("Daily"),
  valueMonthly("Monthly");

  const ReportGranularityType(this.value);
  final String value;

  static ReportGranularityType fromValue(String value) {
    for (final item in ReportGranularityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportGranularityType value: $value');
  }
}

