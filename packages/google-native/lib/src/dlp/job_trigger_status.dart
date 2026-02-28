/// Required. A status for this trigger.
enum JobTriggerStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  paused("PAUSED"),
  cancelled("CANCELLED");

  const JobTriggerStatus(this.value);
  final String value;

  static JobTriggerStatus fromValue(String value) {
    for (final item in JobTriggerStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTriggerStatus value: $value');
  }
}

