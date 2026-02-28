/// Required. Day of the week.
enum WeeklyScheduleDayOfWeekOsconfigV1beta {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDayOfWeekOsconfigV1beta(this.value);
  final String value;

  static WeeklyScheduleDayOfWeekOsconfigV1beta fromValue(String value) {
    for (final item in WeeklyScheduleDayOfWeekOsconfigV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDayOfWeekOsconfigV1beta value: $value');
  }
}

