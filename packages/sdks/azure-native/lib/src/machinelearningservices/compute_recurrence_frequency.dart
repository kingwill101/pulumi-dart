/// [Required] The frequency to trigger schedule.
enum ComputeRecurrenceFrequency {
  minute("Minute"),
  hour("Hour"),
  day("Day"),
  week("Week"),
  month("Month");

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
