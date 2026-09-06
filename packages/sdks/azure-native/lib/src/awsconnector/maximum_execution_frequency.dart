import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum MaximumExecutionFrequency implements pulumi.PulumiEnum<String> {
  oneHour("One_Hour"),
  sixHours("Six_Hours"),
  threeHours("Three_Hours"),
  twelveHours("Twelve_Hours"),
  twentyFourHours("TwentyFour_Hours");

  const MaximumExecutionFrequency(this.wireValue);
  @override
  final String wireValue;

  static MaximumExecutionFrequency fromValue(String value) {
    for (final item in MaximumExecutionFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaximumExecutionFrequency value: $value');
  }
}
