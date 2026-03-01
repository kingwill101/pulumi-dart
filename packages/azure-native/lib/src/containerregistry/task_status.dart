/// The current status of task.
enum TaskStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TaskStatus(this.value);
  final String value;

  static TaskStatus fromValue(String value) {
    for (final item in TaskStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskStatus value: $value');
  }
}

