/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationAction3 {
  delete("DELETE"),
  instanceTerminationActionUnspecified(
      "INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationAction3(this.value);
  final String value;

  static SchedulingInstanceTerminationAction3 fromValue(String value) {
    for (final item in SchedulingInstanceTerminationAction3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingInstanceTerminationAction3 value: $value');
  }
}
