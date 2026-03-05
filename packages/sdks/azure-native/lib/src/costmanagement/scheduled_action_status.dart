/// Status of the scheduled action.
enum ScheduledActionStatus {
  disabled("Disabled"),
  enabled("Enabled"),
  expired("Expired");

  const ScheduledActionStatus(this.wireValue);
  final String wireValue;

  static ScheduledActionStatus fromValue(String value) {
    for (final item in ScheduledActionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledActionStatus value: $value');
  }
}

