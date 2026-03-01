/// The frequency of the recurrence.
enum RecurrenceFrequency {
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RecurrenceFrequency(this.value);
  final String value;

  static RecurrenceFrequency fromValue(String value) {
    for (final item in RecurrenceFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceFrequency value: $value');
  }
}

