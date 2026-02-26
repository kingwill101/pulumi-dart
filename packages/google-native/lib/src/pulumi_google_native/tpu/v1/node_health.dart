/// The health status of the TPU node.
enum NodeHealth {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  deprecatedUnhealthy("DEPRECATED_UNHEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealth(this.value);
  final String value;

  static NodeHealth fromValue(String value) {
    for (final item in NodeHealth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealth value: $value');
  }
}
