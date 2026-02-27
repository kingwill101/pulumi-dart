/// CPU overcommit.
enum NodeTemplateCpuOvercommitTypeComputeV1 {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitTypeComputeV1(this.value);
  final String value;

  static NodeTemplateCpuOvercommitTypeComputeV1 fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodeTemplateCpuOvercommitTypeComputeV1 value: $value');
  }
}
