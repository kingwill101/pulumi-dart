/// Required. A day of the week.
enum WeekDayOfMonthDayOfWeek {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeekDayOfMonthDayOfWeek(this.value);
  final String value;

  static WeekDayOfMonthDayOfWeek fromValue(String value) {
    for (final item in WeekDayOfMonthDayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDayOfMonthDayOfWeek value: $value');
  }
}

