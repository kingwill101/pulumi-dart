/// Recurrence Interval
enum RecurrenceInterval {
  valueHour("Hour"),
  valueDay("Day");

  const RecurrenceInterval(this.value);
  final String value;

  static RecurrenceInterval fromValue(String value) {
    for (final item in RecurrenceInterval.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceInterval value: $value');
  }
}

