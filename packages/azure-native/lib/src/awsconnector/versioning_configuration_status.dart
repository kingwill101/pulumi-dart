/// The versioning state of the bucket.
enum VersioningConfigurationStatus {
  enabled("Enabled"),
  suspended("Suspended");

  const VersioningConfigurationStatus(this.value);
  final String value;

  static VersioningConfigurationStatus fromValue(String value) {
    for (final item in VersioningConfigurationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersioningConfigurationStatus value: $value');
  }
}

