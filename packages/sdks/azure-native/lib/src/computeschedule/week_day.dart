import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of the possible selection of days in a week in a gregorian calendar
enum WeekDay implements pulumi.PulumiEnum<String> {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday"),
  all("All");

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
