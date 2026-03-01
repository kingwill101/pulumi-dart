/// Direction of sort.
enum ReportConfigSortingType {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const ReportConfigSortingType(this.value);
  final String value;

  static ReportConfigSortingType fromValue(String value) {
    for (final item in ReportConfigSortingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportConfigSortingType value: $value');
  }
}

