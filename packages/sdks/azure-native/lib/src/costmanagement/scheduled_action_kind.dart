/// Kind of the scheduled action.
enum ScheduledActionKind {
  email("Email"),
  insightAlert("InsightAlert");

  const ScheduledActionKind(this.wireValue);
  final String wireValue;

  static ScheduledActionKind fromValue(String value) {
    for (final item in ScheduledActionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledActionKind value: $value');
  }
}

