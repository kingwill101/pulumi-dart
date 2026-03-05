/// Direction of sort.
enum ReportConfigSortingType {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const ReportConfigSortingType(this.wireValue);
  final String wireValue;

  static ReportConfigSortingType fromValue(String value) {
    for (final item in ReportConfigSortingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportConfigSortingType value: $value');
  }
}

