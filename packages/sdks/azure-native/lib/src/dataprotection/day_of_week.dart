enum DayOfWeek {
  valueFriday("Friday"),
  valueMonday("Monday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday"),
  valueThursday("Thursday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday");

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

