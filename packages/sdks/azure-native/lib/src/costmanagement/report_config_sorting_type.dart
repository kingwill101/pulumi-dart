import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of sort.
enum ReportConfigSortingType implements pulumi.PulumiEnum<String> {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const ReportConfigSortingType(this.wireValue);
  @override
  final String wireValue;

  static ReportConfigSortingType fromValue(String value) {
    for (final item in ReportConfigSortingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportConfigSortingType value: $value');
  }
}
