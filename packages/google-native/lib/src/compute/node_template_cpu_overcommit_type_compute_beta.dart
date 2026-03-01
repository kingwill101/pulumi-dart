/// CPU overcommit.
enum NodeTemplateCpuOvercommitTypeComputeBeta {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitTypeComputeBeta(this.value);
  final String value;

  static NodeTemplateCpuOvercommitTypeComputeBeta fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NodeTemplateCpuOvercommitTypeComputeBeta value: $value',
    );
  }
}
