enum DayOfWeek {
  valueFriday("Friday"),
  valueMonday("Monday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday"),
  valueThursday("Thursday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday");

  const DayOfWeek(this.value);
  final String value;

  static DayOfWeek fromValue(String value) {
    for (final item in DayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DayOfWeek value: $value');
  }
}

