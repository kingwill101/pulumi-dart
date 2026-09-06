import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of the months available selection in a gregorian calendar
enum Month implements pulumi.PulumiEnum<String> {
  january("January"),
  february("February"),
  march("March"),
  april("April"),
  may("May"),
  june("June"),
  july("July"),
  august("August"),
  september("September"),
  october("October"),
  november("November"),
  december("December"),
  all("All");

  const Month(this.wireValue);
  @override
  final String wireValue;

  static Month fromValue(String value) {
    for (final item in Month.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Month value: $value');
  }
}
