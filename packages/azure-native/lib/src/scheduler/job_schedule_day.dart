/// Gets or sets the day. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
enum JobScheduleDay {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const JobScheduleDay(this.value);
  final String value;

  static JobScheduleDay fromValue(String value) {
    for (final item in JobScheduleDay.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobScheduleDay value: $value');
  }
}

