/// Enum of weekday
enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const WeekDay(this.wireValue);
  final String wireValue;

  static WeekDay fromValue(String value) {
    for (final item in WeekDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDay value: $value');
  }
}
