/// Days of week.
enum DaysOfWeek {
  sunday("Sunday"),
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday");

  const DaysOfWeek(this.wireValue);
  final String wireValue;

  static DaysOfWeek fromValue(String value) {
    for (final item in DaysOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaysOfWeek value: $value');
  }
}
