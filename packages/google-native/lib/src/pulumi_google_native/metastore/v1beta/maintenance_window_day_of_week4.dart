/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeek4 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek4(this.value);
  final String value;

  static MaintenanceWindowDayOfWeek4 fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeek4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeek4 value: $value');
  }
}
