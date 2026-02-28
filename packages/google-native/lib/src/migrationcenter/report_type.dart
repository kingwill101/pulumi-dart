/// Report type.
enum ReportType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  totalCostOfOwnership("TOTAL_COST_OF_OWNERSHIP");

  const ReportType(this.value);
  final String value;

  static ReportType fromValue(String value) {
    for (final item in ReportType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportType value: $value');
  }
}

