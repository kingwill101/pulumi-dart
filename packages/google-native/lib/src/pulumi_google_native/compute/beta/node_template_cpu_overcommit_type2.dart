/// CPU overcommit.
enum NodeTemplateCpuOvercommitType2 {
  cpuOvercommitTypeUnspecified("CPU_OVERCOMMIT_TYPE_UNSPECIFIED"),
  enabled("ENABLED"),
  none("NONE");

  const NodeTemplateCpuOvercommitType2(this.value);
  final String value;

  static NodeTemplateCpuOvercommitType2 fromValue(String value) {
    for (final item in NodeTemplateCpuOvercommitType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTemplateCpuOvercommitType2 value: $value');
  }
}
