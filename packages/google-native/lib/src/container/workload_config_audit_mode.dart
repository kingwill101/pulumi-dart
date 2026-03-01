/// Sets which mode of auditing should be used for the cluster's workloads.
enum WorkloadConfigAuditMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC"),
  baseline("BASELINE"),
  restricted("RESTRICTED");

  const WorkloadConfigAuditMode(this.value);
  final String value;

  static WorkloadConfigAuditMode fromValue(String value) {
    for (final item in WorkloadConfigAuditMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadConfigAuditMode value: $value');
  }
}
