// ignore_for_file: unused_element, unnecessary_cast

import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_activity_metrics/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_activity_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_cost_optimization_metrics/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_cost_optimization_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_data_protection_metrics/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_data_protection_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_detailed_status_code_metrics/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_detailed_status_code_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel {
  /// S3 Storage Lens activity metrics. See Activity Metrics above for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics?
      activityMetrics;

  /// Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics above for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics?
      advancedCostOptimizationMetrics;

  /// Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics above for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics?
      advancedDataProtectionMetrics;

  /// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics above for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics?
      detailedStatusCodeMetrics;

  /// Prefix-level metrics for S3 Storage Lens. See Prefix Level below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel?
      prefixLevel;

  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    this.detailedStatusCodeMetrics,
    this.prefixLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activityMetricsValue = activityMetrics;
    if (activityMetricsValue != null) {
      map['activityMetrics'] = activityMetricsValue.toMap();
    }
    final advancedCostOptimizationMetricsValue =
        advancedCostOptimizationMetrics;
    if (advancedCostOptimizationMetricsValue != null) {
      map['advancedCostOptimizationMetrics'] =
          advancedCostOptimizationMetricsValue.toMap();
    }
    final advancedDataProtectionMetricsValue = advancedDataProtectionMetrics;
    if (advancedDataProtectionMetricsValue != null) {
      map['advancedDataProtectionMetrics'] =
          advancedDataProtectionMetricsValue.toMap();
    }
    final detailedStatusCodeMetricsValue = detailedStatusCodeMetrics;
    if (detailedStatusCodeMetricsValue != null) {
      map['detailedStatusCodeMetrics'] = detailedStatusCodeMetricsValue.toMap();
    }
    final prefixLevelValue = prefixLevel;
    if (prefixLevelValue != null) {
      map['prefixLevel'] = prefixLevelValue.toMap();
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel(
      activityMetrics: map['activityMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics
              .fromMap((map['activityMetrics'] as Map).cast<String, dynamic>()),
      advancedCostOptimizationMetrics: map['advancedCostOptimizationMetrics'] ==
              null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics
              .fromMap((map['advancedCostOptimizationMetrics'] as Map)
                  .cast<String, dynamic>()),
      advancedDataProtectionMetrics: map['advancedDataProtectionMetrics'] ==
              null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics
              .fromMap((map['advancedDataProtectionMetrics'] as Map)
                  .cast<String, dynamic>()),
      detailedStatusCodeMetrics: map['detailedStatusCodeMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics
              .fromMap((map['detailedStatusCodeMetrics'] as Map)
                  .cast<String, dynamic>()),
      prefixLevel: map['prefixLevel'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel
              .fromMap((map['prefixLevel'] as Map).cast<String, dynamic>()),
    );
  }
}
