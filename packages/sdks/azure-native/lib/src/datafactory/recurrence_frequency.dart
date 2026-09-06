import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency.
enum RecurrenceFrequency implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  minute("Minute"),
  hour("Hour"),
  day("Day"),
  week("Week"),
  month("Month"),
  year("Year");

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
