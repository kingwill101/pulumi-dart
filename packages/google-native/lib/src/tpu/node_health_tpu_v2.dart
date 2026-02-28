/// The health status of the TPU node.
enum NodeHealthTpuV2 {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealthTpuV2(this.value);
  final String value;

  static NodeHealthTpuV2 fromValue(String value) {
    for (final item in NodeHealthTpuV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealthTpuV2 value: $value');
  }
}
