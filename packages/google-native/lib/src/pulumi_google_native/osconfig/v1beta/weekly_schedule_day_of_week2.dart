/// Required. Day of the week.
enum WeeklyScheduleDayOfWeek2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDayOfWeek2(this.value);
  final String value;

  static WeeklyScheduleDayOfWeek2 fromValue(String value) {
    for (final item in WeeklyScheduleDayOfWeek2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDayOfWeek2 value: $value');
  }
}
