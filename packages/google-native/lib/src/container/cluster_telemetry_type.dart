/// Type of the integration.
enum ClusterTelemetryType {
  unspecified("UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  systemOnly("SYSTEM_ONLY");

  const ClusterTelemetryType(this.value);
  final String value;

  static ClusterTelemetryType fromValue(String value) {
    for (final item in ClusterTelemetryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterTelemetryType value: $value');
  }
}
