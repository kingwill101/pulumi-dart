/// Metric Id on which the throttle limit should be set, MetricId can be discovered by hovering over Metric in the Metrics section of Event Hub Namespace inside Azure Portal
enum MetricId {
  valueIncomingBytes("IncomingBytes"),
  valueOutgoingBytes("OutgoingBytes"),
  valueIncomingMessages("IncomingMessages"),
  valueOutgoingMessages("OutgoingMessages");

  const MetricId(this.wireValue);
  final String wireValue;

  static MetricId fromValue(String value) {
    for (final item in MetricId.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricId value: $value');
  }
}
