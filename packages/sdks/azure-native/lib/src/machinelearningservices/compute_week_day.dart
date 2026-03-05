/// Enum of weekday
enum ComputeWeekDay {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

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

