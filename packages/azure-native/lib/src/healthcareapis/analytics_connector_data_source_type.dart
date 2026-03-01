/// Type of data source.
enum AnalyticsConnectorDataSourceType {
  valueFhirservice("fhirservice");

  const AnalyticsConnectorDataSourceType(this.value);
  final String value;

  static AnalyticsConnectorDataSourceType fromValue(String value) {
    for (final item in AnalyticsConnectorDataSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorDataSourceType value: $value');
  }
}

