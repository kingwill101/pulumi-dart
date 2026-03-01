/// The frequency of this scheduled task.
enum ScheduledFrequency {
  valueDaily("Daily");

  const ScheduledFrequency(this.value);
  final String value;

  static ScheduledFrequency fromValue(String value) {
    for (final item in ScheduledFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledFrequency value: $value');
  }
}

