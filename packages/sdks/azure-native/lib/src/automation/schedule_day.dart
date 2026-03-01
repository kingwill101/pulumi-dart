/// Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
enum ScheduleDay {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const ScheduleDay(this.value);
  final String value;

  static ScheduleDay fromValue(String value) {
    for (final item in ScheduleDay.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleDay value: $value');
  }
}

