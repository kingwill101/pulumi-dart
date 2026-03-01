/// Type of data mapping.
enum AnalyticsConnectorMappingType {
  valueFhirToParquet("fhirToParquet");

  const AnalyticsConnectorMappingType(this.value);
  final String value;

  static AnalyticsConnectorMappingType fromValue(String value) {
    for (final item in AnalyticsConnectorMappingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorMappingType value: $value');
  }
}

