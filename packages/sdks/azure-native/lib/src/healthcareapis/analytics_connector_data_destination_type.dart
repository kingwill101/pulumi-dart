import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of data destination.
enum AnalyticsConnectorDataDestinationType implements pulumi.PulumiEnum<String> {
  valueDatalake("datalake");

  const AnalyticsConnectorDataDestinationType(this.wireValue);
  @override
  final String wireValue;

  static AnalyticsConnectorDataDestinationType fromValue(String value) {
    for (final item in AnalyticsConnectorDataDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorDataDestinationType value: $value');
  }
}
