/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDayRedisV1 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDayRedisV1(this.value);
  final String value;

  static WeeklyMaintenanceWindowDayRedisV1 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDayRedisV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WeeklyMaintenanceWindowDayRedisV1 value: $value');
  }
}
