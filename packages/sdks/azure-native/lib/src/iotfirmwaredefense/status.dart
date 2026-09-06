import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of firmware scan.
enum Status implements pulumi.PulumiEnum<String> {
  valuePending("Pending"),
  valueExtracting("Extracting"),
  valueAnalyzing("Analyzing"),
  valueReady("Ready"),
  valueError("Error");

  const Status(this.wireValue);
  @override
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
