enum WeeklyScheduleDaysOfWeekItem {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItem(this.value);
  final String value;

  static WeeklyScheduleDaysOfWeekItem fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItem value: $value');
  }
}

