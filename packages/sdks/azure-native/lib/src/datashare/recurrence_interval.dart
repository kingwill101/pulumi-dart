import 'package:pulumi/pulumi.dart' as pulumi;

/// Recurrence Interval
enum RecurrenceInterval implements pulumi.PulumiEnum<String> {
  valueHour("Hour"),
  valueDay("Day");

  const RecurrenceInterval(this.wireValue);
  @override
  final String wireValue;

  static RecurrenceInterval fromValue(String value) {
    for (final item in RecurrenceInterval.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceInterval value: $value');
  }
}
