// ignore_for_file: unused_element, unnecessary_cast


class StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics {
  /// Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.
  final bool enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics].
  /// [enabled] Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.
  StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics(
      enabled: map['enabled'] as bool,
    );
  }
}

