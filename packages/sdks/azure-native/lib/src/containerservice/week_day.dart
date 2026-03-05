/// The day of the week.
enum WeekDay {
  valueSunday("Sunday"),
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday");

  const WeekDay(this.wireValue);
  final String wireValue;

  static WeekDay fromValue(String value) {
    for (final item in WeekDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDay value: $value');
  }
}

