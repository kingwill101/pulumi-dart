import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of data source.
enum AnalyticsConnectorDataSourceType implements pulumi.PulumiEnum<String> {
  valueFhirservice("fhirservice");

  const AnalyticsConnectorDataSourceType(this.wireValue);
  @override
  final String wireValue;

  static AnalyticsConnectorDataSourceType fromValue(String value) {
    for (final item in AnalyticsConnectorDataSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorDataSourceType value: $value');
  }
}
