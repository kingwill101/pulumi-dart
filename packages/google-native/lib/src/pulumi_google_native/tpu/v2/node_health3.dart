/// The health status of the TPU node.
enum NodeHealth3 {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealth3(this.value);
  final String value;

  static NodeHealth3 fromValue(String value) {
    for (final item in NodeHealth3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealth3 value: $value');
  }
}
