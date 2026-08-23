/// The frequency.
enum RecurrenceFrequency {
  valueNotSpecified("NotSpecified"),
  valueSecond("Second"),
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month"),
  valueYear("Year");

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
