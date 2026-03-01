/// [Required] The frequency to trigger schedule.
enum ComputeRecurrenceFrequency {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const ComputeRecurrenceFrequency(this.value);
  final String value;

  static ComputeRecurrenceFrequency fromValue(String value) {
    for (final item in ComputeRecurrenceFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeRecurrenceFrequency value: $value');
  }
}

