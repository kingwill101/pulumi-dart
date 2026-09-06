import 'package:pulumi/pulumi.dart' as pulumi;

enum DaysOfWeek implements pulumi.PulumiEnum<String> {
  valueSunday("Sunday"),
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday");

  const DaysOfWeek(this.wireValue);
  @override
  final String wireValue;

  static DaysOfWeek fromValue(String value) {
    for (final item in DaysOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaysOfWeek value: $value');
  }
}
