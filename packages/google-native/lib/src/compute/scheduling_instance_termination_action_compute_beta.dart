/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationActionComputeBeta {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationActionComputeBeta(this.value);
  final String value;

  static SchedulingInstanceTerminationActionComputeBeta fromValue(String value) {
    for (final item in SchedulingInstanceTerminationActionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingInstanceTerminationActionComputeBeta value: $value');
  }
}

