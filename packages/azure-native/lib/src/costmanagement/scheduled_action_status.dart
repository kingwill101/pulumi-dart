/// Status of the scheduled action.
enum ScheduledActionStatus {
  disabled("Disabled"),
  enabled("Enabled"),
  expired("Expired");

  const ScheduledActionStatus(this.value);
  final String value;

  static ScheduledActionStatus fromValue(String value) {
    for (final item in ScheduledActionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledActionStatus value: $value');
  }
}

