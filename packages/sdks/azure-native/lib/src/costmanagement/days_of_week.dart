/// Days of Week.
enum DaysOfWeek {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const DaysOfWeek(this.wireValue);
  final String wireValue;

  static DaysOfWeek fromValue(String value) {
    for (final item in DaysOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaysOfWeek value: $value');
  }
}
