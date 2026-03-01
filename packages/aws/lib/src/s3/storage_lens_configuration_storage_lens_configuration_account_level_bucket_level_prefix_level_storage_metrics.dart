// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level_storage_metrics_selection_criteria.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics {
  /// Whether prefix-level storage metrics are enabled.
  final bool? enabled;
  /// Selection criteria. See Selection Criteria below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria? selectionCriteria;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics].
  /// [enabled] Whether prefix-level storage metrics are enabled.
  /// [selectionCriteria] Selection criteria. See Selection Criteria below for more details.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics({
    this.enabled,
    this.selectionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'selectionCriteria': ?selectionCriteria == null ? null : selectionCriteria!.toMap(),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      selectionCriteria: map['selectionCriteria'] == null ? null : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria.fromMap((map['selectionCriteria'] as Map).cast<String, dynamic>()),
    );
  }
}

