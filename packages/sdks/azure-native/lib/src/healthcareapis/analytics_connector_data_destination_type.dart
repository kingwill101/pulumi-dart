/// Type of data destination.
enum AnalyticsConnectorDataDestinationType {
  valueDatalake("datalake");

  const AnalyticsConnectorDataDestinationType(this.value);
  final String value;

  static AnalyticsConnectorDataDestinationType fromValue(String value) {
    for (final item in AnalyticsConnectorDataDestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnalyticsConnectorDataDestinationType value: $value');
  }
}

