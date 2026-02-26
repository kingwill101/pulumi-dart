/// Required. Allows to define schedule that runs specified day of the week.
enum WeeklyMaintenanceWindowDay2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDay2(this.value);
  final String value;

  static WeeklyMaintenanceWindowDay2 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDay2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDay2 value: $value');
  }
}
