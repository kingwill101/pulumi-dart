import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Residency Boundary of the resource.
enum DataResidencyBoundary implements pulumi.PulumiEnum<String> {
  valueWithinGeopair("WithinGeopair"),
  valueWithinRegion("WithinRegion");

  const DataResidencyBoundary(this.wireValue);
  @override
  final String wireValue;

  static DataResidencyBoundary fromValue(String value) {
    for (final item in DataResidencyBoundary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResidencyBoundary value: $value');
  }
}
