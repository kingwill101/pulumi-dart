/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDay4 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDay4(this.value);
  final String value;

  static WeeklyMaintenanceWindowDay4 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDay4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDay4 value: $value');
  }
}
