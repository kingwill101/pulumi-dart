enum WeeklyScheduleDaysOfWeekItemAlloydbV1beta {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItemAlloydbV1beta(this.value);
  final String value;

  static WeeklyScheduleDaysOfWeekItemAlloydbV1beta fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItemAlloydbV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WeeklyScheduleDaysOfWeekItemAlloydbV1beta value: $value');
  }
}
