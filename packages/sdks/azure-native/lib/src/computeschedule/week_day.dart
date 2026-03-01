/// Representation of the possible selection of days in a week in a gregorian calendar
enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday"),
  all("All");

  const WeekDay(this.value);
  final String value;

  static WeekDay fromValue(String value) {
    for (final item in WeekDay.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDay value: $value');
  }
}

