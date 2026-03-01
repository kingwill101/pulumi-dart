/// Required. Allows to define schedule that runs specified day of the week.
enum WeeklyMaintenanceWindowDayMemcacheV1beta2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDayMemcacheV1beta2(this.value);
  final String value;

  static WeeklyMaintenanceWindowDayMemcacheV1beta2 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDayMemcacheV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown WeeklyMaintenanceWindowDayMemcacheV1beta2 value: $value',
    );
  }
}
