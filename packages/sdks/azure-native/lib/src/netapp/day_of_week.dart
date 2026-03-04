/// Day of the week
enum DayOfWeek {
  sunday("Sunday"),
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday");

  const DayOfWeek(this.wireValue);
  final String wireValue;

  static DayOfWeek fromValue(String value) {
    for (final item in DayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DayOfWeek value: $value');
  }
}
