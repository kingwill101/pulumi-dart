/// The health status of the TPU node.
enum NodeHealth4 {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealth4(this.value);
  final String value;

  static NodeHealth4 fromValue(String value) {
    for (final item in NodeHealth4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealth4 value: $value');
  }
}
