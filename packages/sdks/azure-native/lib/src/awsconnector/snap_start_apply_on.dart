import 'package:pulumi/pulumi.dart' as pulumi;

/// Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
enum SnapStartApplyOn implements pulumi.PulumiEnum<String> {
  none("None"),
  publishedVersions("PublishedVersions");

  const SnapStartApplyOn(this.wireValue);
  @override
  final String wireValue;

  static SnapStartApplyOn fromValue(String value) {
    for (final item in SnapStartApplyOn.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapStartApplyOn value: $value');
  }
}
