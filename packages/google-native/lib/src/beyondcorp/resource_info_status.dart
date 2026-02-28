/// Overall health status. Overall status is derived based on the status of each sub level resources.
enum ResourceInfoStatus {
  healthStatusUnspecified("HEALTH_STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  unhealthy("UNHEALTHY"),
  unresponsive("UNRESPONSIVE"),
  degraded("DEGRADED");

  const ResourceInfoStatus(this.value);
  final String value;

  static ResourceInfoStatus fromValue(String value) {
    for (final item in ResourceInfoStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceInfoStatus value: $value');
  }
}
