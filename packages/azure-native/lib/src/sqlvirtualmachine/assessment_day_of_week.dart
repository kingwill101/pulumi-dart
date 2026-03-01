/// Day of the week to run assessment.
enum AssessmentDayOfWeek {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const AssessmentDayOfWeek(this.value);
  final String value;

  static AssessmentDayOfWeek fromValue(String value) {
    for (final item in AssessmentDayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentDayOfWeek value: $value');
  }
}

