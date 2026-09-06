import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
enum ScheduleDay implements pulumi.PulumiEnum<String> {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const ScheduleDay(this.wireValue);
  @override
  final String wireValue;

  static ScheduleDay fromValue(String value) {
    for (final item in ScheduleDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleDay value: $value');
  }
}
