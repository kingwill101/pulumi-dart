/// Required. Allows to define schedule that runs specified day of the week.
enum WeeklyMaintenanceWindowDay {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDay(this.value);
  final String value;

  static WeeklyMaintenanceWindowDay fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDay.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDay value: $value');
  }
}
