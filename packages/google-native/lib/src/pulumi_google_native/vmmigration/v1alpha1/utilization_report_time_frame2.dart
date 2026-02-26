/// Time frame of the report.
enum UtilizationReportTimeFrame2 {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrame2(this.value);
  final String value;

  static UtilizationReportTimeFrame2 fromValue(String value) {
    for (final item in UtilizationReportTimeFrame2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UtilizationReportTimeFrame2 value: $value');
  }
}
