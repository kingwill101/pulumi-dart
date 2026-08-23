/// [Required] The frequency to trigger schedule.
enum RecurrenceFrequency {
  minute("Minute"),
  hour("Hour"),
  day("Day"),
  week("Week"),
  month("Month");

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
