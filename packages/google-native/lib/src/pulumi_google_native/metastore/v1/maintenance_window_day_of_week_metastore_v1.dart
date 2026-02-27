/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeekMetastoreV1 {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeekMetastoreV1(this.value);
  final String value;

  static MaintenanceWindowDayOfWeekMetastoreV1 fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeekMetastoreV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MaintenanceWindowDayOfWeekMetastoreV1 value: $value');
  }
}
