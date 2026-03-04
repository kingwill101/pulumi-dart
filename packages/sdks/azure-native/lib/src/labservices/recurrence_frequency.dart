/// The frequency of the recurrence.
enum RecurrenceFrequency {
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RecurrenceFrequency(this.wireValue);
  final String wireValue;

  static RecurrenceFrequency fromValue(String value) {
    for (final item in RecurrenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceFrequency value: $value');
  }
}
