/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeek2 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek2(this.value);
  final String value;

  static MaintenanceWindowDayOfWeek2 fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeek2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeek2 value: $value');
  }
}
