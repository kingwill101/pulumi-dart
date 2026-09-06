import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency to run the maintenance job
enum Frequency implements pulumi.PulumiEnum<String> {
  valueWeekly("Weekly");

  const Frequency(this.wireValue);
  @override
  final String wireValue;

  static Frequency fromValue(String value) {
    for (final item in Frequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Frequency value: $value');
  }
}
