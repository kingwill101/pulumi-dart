/// The status of the task
enum IncidentTaskStatus {
  valueNew("New"),
  valueCompleted("Completed");

  const IncidentTaskStatus(this.value);
  final String value;

  static IncidentTaskStatus fromValue(String value) {
    for (final item in IncidentTaskStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentTaskStatus value: $value');
  }
}

