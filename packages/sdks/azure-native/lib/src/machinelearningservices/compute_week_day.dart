/// Enum of weekday
enum ComputeWeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const ComputeWeekDay(this.wireValue);
  final String wireValue;

  static ComputeWeekDay fromValue(String value) {
    for (final item in ComputeWeekDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeWeekDay value: $value');
  }
}
