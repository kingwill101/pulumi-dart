/// Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
enum ScheduleDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const ScheduleDay(this.wireValue);
  final String wireValue;

  static ScheduleDay fromValue(String value) {
    for (final item in ScheduleDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleDay value: $value');
  }
}
