import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency.
enum RecurrenceFrequency implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueSecond("Second"),
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month"),
  valueYear("Year");

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
