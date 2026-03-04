/// The current status of task.
enum TaskStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TaskStatus(this.wireValue);
  final String wireValue;

  static TaskStatus fromValue(String value) {
    for (final item in TaskStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskStatus value: $value');
  }
}
