/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeek {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek(this.value);
  final String value;

  static MaintenanceWindowDayOfWeek fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeek value: $value');
  }
}
