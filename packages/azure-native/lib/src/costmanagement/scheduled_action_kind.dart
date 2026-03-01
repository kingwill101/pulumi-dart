/// Kind of the scheduled action.
enum ScheduledActionKind {
  email("Email"),
  insightAlert("InsightAlert");

  const ScheduledActionKind(this.value);
  final String value;

  static ScheduledActionKind fromValue(String value) {
    for (final item in ScheduledActionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledActionKind value: $value');
  }
}

