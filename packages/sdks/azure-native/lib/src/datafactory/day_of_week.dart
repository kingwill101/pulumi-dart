import 'package:pulumi/pulumi.dart' as pulumi;

/// The day of the week.
enum DayOfWeek implements pulumi.PulumiEnum<String> {
  sunday("Sunday"),
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday");

  const DayOfWeek(this.wireValue);
  @override
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
