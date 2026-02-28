// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level_storage_metrics.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel {
  /// Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics
      storageMetrics;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel].
  /// [storageMetrics] Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel({
    required this.storageMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageMetrics'] = storageMetrics.toMap();
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel(
      storageMetrics:
          StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics
              .fromMap((map['storageMetrics'] as Map).cast<String, dynamic>()),
    );
  }
}
