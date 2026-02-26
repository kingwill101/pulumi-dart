/// CPU overcommit.
enum NodeTemplateCpuOvercommitType3 {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitType3(this.value);
  final String value;

  static NodeTemplateCpuOvercommitType3 fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitType3 value: $value');
  }
}
