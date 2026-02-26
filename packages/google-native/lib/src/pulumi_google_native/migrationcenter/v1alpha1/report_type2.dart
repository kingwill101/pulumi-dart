/// Report type.
enum ReportType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  totalCostOfOwnership("TOTAL_COST_OF_OWNERSHIP");

  const ReportType2(this.value);
  final String value;

  static ReportType2 fromValue(String value) {
    for (final item in ReportType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportType2 value: $value');
  }
}
