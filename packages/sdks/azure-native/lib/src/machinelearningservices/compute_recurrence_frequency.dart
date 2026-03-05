/// [Required] The frequency to trigger schedule.
enum ComputeRecurrenceFrequency {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const ComputeRecurrenceFrequency(this.wireValue);
  final String wireValue;

  static ComputeRecurrenceFrequency fromValue(String value) {
    for (final item in ComputeRecurrenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeRecurrenceFrequency value: $value');
  }
}

