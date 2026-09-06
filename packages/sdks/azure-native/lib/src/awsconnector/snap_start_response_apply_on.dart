import 'package:pulumi/pulumi.dart' as pulumi;

/// When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
enum SnapStartResponseApplyOn implements pulumi.PulumiEnum<String> {
  none("None"),
  publishedVersions("PublishedVersions");

  const SnapStartResponseApplyOn(this.wireValue);
  @override
  final String wireValue;

  static SnapStartResponseApplyOn fromValue(String value) {
    for (final item in SnapStartResponseApplyOn.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapStartResponseApplyOn value: $value');
  }
}
