enum WeeklyScheduleDaysOfWeekItem2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItem2(this.value);
  final String value;

  static WeeklyScheduleDaysOfWeekItem2 fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItem2 value: $value');
  }
}
