/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDayRedisV1beta1 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDayRedisV1beta1(this.value);
  final String value;

  static WeeklyMaintenanceWindowDayRedisV1beta1 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDayRedisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDayRedisV1beta1 value: $value');
  }
}

