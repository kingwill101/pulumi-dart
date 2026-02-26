/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeek3 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek3(this.value);
  final String value;

  static MaintenanceWindowDayOfWeek3 fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeek3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeek3 value: $value');
  }
}
