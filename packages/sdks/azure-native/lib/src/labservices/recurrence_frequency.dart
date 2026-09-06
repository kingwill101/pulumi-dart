import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency of the recurrence.
enum RecurrenceFrequency implements pulumi.PulumiEnum<String> {
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RecurrenceFrequency(this.wireValue);
  @override
  final String wireValue;

  static RecurrenceFrequency fromValue(String value) {
    for (final item in RecurrenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceFrequency value: $value');
  }
}
