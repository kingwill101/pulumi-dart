enum WeeklyScheduleDaysOfWeekItemAlloydbV1alpha {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItemAlloydbV1alpha(this.value);
  final String value;

  static WeeklyScheduleDaysOfWeekItemAlloydbV1alpha fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItemAlloydbV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WeeklyScheduleDaysOfWeekItemAlloydbV1alpha value: $value');
  }
}
