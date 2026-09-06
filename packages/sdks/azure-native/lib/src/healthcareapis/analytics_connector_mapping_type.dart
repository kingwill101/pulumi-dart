import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of data mapping.
enum AnalyticsConnectorMappingType implements pulumi.PulumiEnum<String> {
  valueFhirToParquet("fhirToParquet");

  const AnalyticsConnectorMappingType(this.wireValue);
  @override
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
