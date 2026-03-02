// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level_storage_metrics.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel {
  /// Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics> storageMetrics;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel].
  /// [storageMetrics] Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel({
    required this.storageMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageMetrics': pulumi.Input.mapInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics, Map<String, dynamic>>(storageMetrics, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel(
      storageMetrics: (StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics.fromMap((map['storageMetrics'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

