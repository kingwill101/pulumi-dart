import 'package:pulumi/pulumi.dart' as pulumi;

/// Days of week.
enum DaysOfWeek implements pulumi.PulumiEnum<String> {
  sunday("Sunday"),
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday");

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
