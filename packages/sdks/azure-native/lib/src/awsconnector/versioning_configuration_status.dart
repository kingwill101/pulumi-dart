import 'package:pulumi/pulumi.dart' as pulumi;

/// The versioning state of the bucket.
enum VersioningConfigurationStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  suspended("Suspended");

  const VersioningConfigurationStatus(this.wireValue);
  @override
  final String wireValue;

  static VersioningConfigurationStatus fromValue(String value) {
    for (final item in VersioningConfigurationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersioningConfigurationStatus value: $value');
  }
}
