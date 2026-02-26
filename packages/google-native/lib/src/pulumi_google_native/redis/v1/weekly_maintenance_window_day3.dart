/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDay3 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDay3(this.value);
  final String value;

  static WeeklyMaintenanceWindowDay3 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDay3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDay3 value: $value');
  }
}
