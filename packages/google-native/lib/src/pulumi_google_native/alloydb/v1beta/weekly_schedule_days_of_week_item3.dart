enum WeeklyScheduleDaysOfWeekItem3 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItem3(this.value);
  final String value;

  static WeeklyScheduleDaysOfWeekItem3 fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItem3 value: $value');
  }
}
