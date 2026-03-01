/// [Required] The frequency to trigger schedule.
enum RecurrenceFrequency {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

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

