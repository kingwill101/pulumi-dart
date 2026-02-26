// ignore_for_file: unused_element, unnecessary_cast

import '../storage_lens_configuration_storage_lens_configuration_account_level_activity_metrics/storage_lens_configuration_storage_lens_configuration_account_level_activity_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_advanced_cost_optimization_metrics/storage_lens_configuration_storage_lens_configuration_account_level_advanced_cost_optimization_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_advanced_data_protection_metrics/storage_lens_configuration_storage_lens_configuration_account_level_advanced_data_protection_metrics.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_bucket_level/storage_lens_configuration_storage_lens_configuration_account_level_bucket_level.dart';
import '../storage_lens_configuration_storage_lens_configuration_account_level_detailed_status_code_metrics/storage_lens_configuration_storage_lens_configuration_account_level_detailed_status_code_metrics.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevel {
  /// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics?
      activityMetrics;

  /// Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics?
      advancedCostOptimizationMetrics;

  /// Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics?
      advancedDataProtectionMetrics;

  /// S3 Storage Lens bucket-level configuration. See Bucket Level below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel
      bucketLevel;

  /// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
  final StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics?
      detailedStatusCodeMetrics;

  StorageLensConfigurationStorageLensConfigurationAccountLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    required this.bucketLevel,
    this.detailedStatusCodeMetrics,
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
    map['bucketLevel'] = bucketLevel.toMap();
    final detailedStatusCodeMetricsValue = detailedStatusCodeMetrics;
    if (detailedStatusCodeMetricsValue != null) {
      map['detailedStatusCodeMetrics'] = detailedStatusCodeMetricsValue.toMap();
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevel(
      activityMetrics: map['activityMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics
              .fromMap((map['activityMetrics'] as Map).cast<String, dynamic>()),
      advancedCostOptimizationMetrics: map['advancedCostOptimizationMetrics'] ==
              null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics
              .fromMap((map['advancedCostOptimizationMetrics'] as Map)
                  .cast<String, dynamic>()),
      advancedDataProtectionMetrics: map['advancedDataProtectionMetrics'] ==
              null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics
              .fromMap((map['advancedDataProtectionMetrics'] as Map)
                  .cast<String, dynamic>()),
      bucketLevel:
          StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel
              .fromMap((map['bucketLevel'] as Map).cast<String, dynamic>()),
      detailedStatusCodeMetrics: map['detailedStatusCodeMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics
              .fromMap((map['detailedStatusCodeMetrics'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
