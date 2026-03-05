/// Type of data destination.
enum AnalyticsConnectorDataDestinationType {
  valueDatalake("datalake");

  const AnalyticsConnectorDataDestinationType(this.wireValue);
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

