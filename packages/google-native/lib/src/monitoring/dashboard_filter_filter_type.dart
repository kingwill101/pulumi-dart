/// The specified filter type
enum DashboardFilterFilterType {
  filterTypeUnspecified("FILTER_TYPE_UNSPECIFIED"),
  resourceLabel("RESOURCE_LABEL"),
  metricLabel("METRIC_LABEL"),
  userMetadataLabel("USER_METADATA_LABEL"),
  systemMetadataLabel("SYSTEM_METADATA_LABEL"),
  group("GROUP");

  const DashboardFilterFilterType(this.value);
  final String value;

  static DashboardFilterFilterType fromValue(String value) {
    for (final item in DashboardFilterFilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DashboardFilterFilterType value: $value');
  }
}
