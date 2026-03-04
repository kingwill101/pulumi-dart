// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics {
  /// Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics].
  /// [enabled] Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.
  StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
