import 'package:pulumi/pulumi.dart' as pulumi;

/// The frequency to update.
enum FrequencyTypes implements pulumi.PulumiEnum<String> {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const FrequencyTypes(this.wireValue);
  @override
  final String wireValue;

  static FrequencyTypes fromValue(String value) {
    for (final item in FrequencyTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrequencyTypes value: $value');
  }
}
