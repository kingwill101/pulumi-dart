/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationAction2 {
  delete("DELETE"),
  instanceTerminationActionUnspecified(
      "INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationAction2(this.value);
  final String value;

  static SchedulingInstanceTerminationAction2 fromValue(String value) {
    for (final item in SchedulingInstanceTerminationAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingInstanceTerminationAction2 value: $value');
  }
}
