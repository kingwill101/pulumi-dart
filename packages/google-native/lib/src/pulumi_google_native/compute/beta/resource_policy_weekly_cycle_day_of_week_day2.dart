/// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
enum ResourcePolicyWeeklyCycleDayOfWeekDay2 {
  friday("FRIDAY"),
  invalid("INVALID"),
  monday("MONDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY"),
  thursday("THURSDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY");

  const ResourcePolicyWeeklyCycleDayOfWeekDay2(this.value);
  final String value;

  static ResourcePolicyWeeklyCycleDayOfWeekDay2 fromValue(String value) {
    for (final item in ResourcePolicyWeeklyCycleDayOfWeekDay2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicyWeeklyCycleDayOfWeekDay2 value: $value');
  }
}
