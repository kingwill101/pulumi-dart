/// Required. A day of the week.
enum WeekDayOfMonthDayOfWeek2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeekDayOfMonthDayOfWeek2(this.value);
  final String value;

  static WeekDayOfMonthDayOfWeek2 fromValue(String value) {
    for (final item in WeekDayOfMonthDayOfWeek2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDayOfMonthDayOfWeek2 value: $value');
  }
}
