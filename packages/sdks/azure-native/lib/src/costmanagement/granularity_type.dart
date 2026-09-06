import 'package:pulumi/pulumi.dart' as pulumi;

/// The granularity of rows in the report.
enum GranularityType implements pulumi.PulumiEnum<String> {
  valueDaily("Daily"),
  valueHourly("Hourly");

  const GranularityType(this.wireValue);
  @override
  final String wireValue;

  static GranularityType fromValue(String value) {
    for (final item in GranularityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GranularityType value: $value');
  }
}
