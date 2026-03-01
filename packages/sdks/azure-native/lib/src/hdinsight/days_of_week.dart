enum DaysOfWeek {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const DaysOfWeek(this.value);
  final String value;

  static DaysOfWeek fromValue(String value) {
    for (final item in DaysOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaysOfWeek value: $value');
  }
}

