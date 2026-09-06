import 'package:pulumi/pulumi.dart' as pulumi;

/// The granularity of rows in the report.
enum ReportGranularityType implements pulumi.PulumiEnum<String> {
  valueDaily("Daily"),
  valueMonthly("Monthly");

  const ReportGranularityType(this.wireValue);
  @override
  final String wireValue;

  static ReportGranularityType fromValue(String value) {
    for (final item in ReportGranularityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportGranularityType value: $value');
  }
}
