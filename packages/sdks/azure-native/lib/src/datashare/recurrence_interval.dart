/// Recurrence Interval
enum RecurrenceInterval {
  valueHour("Hour"),
  valueDay("Day");

  const RecurrenceInterval(this.wireValue);
  final String wireValue;

  static RecurrenceInterval fromValue(String value) {
    for (final item in RecurrenceInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceInterval value: $value');
  }
}
