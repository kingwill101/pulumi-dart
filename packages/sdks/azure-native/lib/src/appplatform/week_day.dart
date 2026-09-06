import 'package:pulumi/pulumi.dart' as pulumi;

/// The day to run the maintenance job
enum WeekDay implements pulumi.PulumiEnum<String> {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const WeekDay(this.wireValue);
  @override
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
