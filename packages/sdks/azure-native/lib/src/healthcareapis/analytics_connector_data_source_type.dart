/// Type of data source.
enum AnalyticsConnectorDataSourceType {
  valueFhirservice("fhirservice");

  const AnalyticsConnectorDataSourceType(this.wireValue);
  final String wireValue;

  static AnalyticsConnectorDataSourceType fromValue(String value) {
    for (final item in AnalyticsConnectorDataSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AnalyticsConnectorDataSourceType value: $value',
    );
  }
}
