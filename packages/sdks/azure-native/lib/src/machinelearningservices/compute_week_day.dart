import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum of weekday
enum ComputeWeekDay implements pulumi.PulumiEnum<String> {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const ComputeWeekDay(this.wireValue);
  @override
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
