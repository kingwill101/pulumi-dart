/// Type of data mapping.
enum AnalyticsConnectorMappingType {
  valueFhirToParquet("fhirToParquet");

  const AnalyticsConnectorMappingType(this.wireValue);
  final String wireValue;

  static AnalyticsConnectorMappingType fromValue(String value) {
    for (final item in AnalyticsConnectorMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorMappingType value: $value');
  }
}

