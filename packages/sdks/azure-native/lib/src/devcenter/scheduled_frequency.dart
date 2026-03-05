/// The frequency of this scheduled task.
enum ScheduledFrequency {
  valueDaily("Daily");

  const ScheduledFrequency(this.wireValue);
  final String wireValue;

  static ScheduledFrequency fromValue(String value) {
    for (final item in ScheduledFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledFrequency value: $value');
  }
}

