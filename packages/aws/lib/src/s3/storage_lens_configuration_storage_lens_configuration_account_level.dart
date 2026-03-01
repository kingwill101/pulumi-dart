// ignore_for_file: unused_element, unnecessary_cast

import 'storage_lens_configuration_storage_lens_configuration_account_level_activity_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_cost_optimization_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_data_protection_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_detailed_status_code_metrics.dart';

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

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevel].
  /// [activityMetrics] S3 Storage Lens activity metrics. See Activity Metrics below for more details.
  /// [advancedCostOptimizationMetrics] Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
  /// [advancedDataProtectionMetrics] Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
  /// [bucketLevel] S3 Storage Lens bucket-level configuration. See Bucket Level below for more details.
  /// [detailedStatusCodeMetrics] Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
  StorageLensConfigurationStorageLensConfigurationAccountLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    required this.bucketLevel,
    this.detailedStatusCodeMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityMetrics': ?activityMetrics == null
          ? null
          : activityMetrics!.toMap(),
      'advancedCostOptimizationMetrics':
          ?advancedCostOptimizationMetrics == null
          ? null
          : advancedCostOptimizationMetrics!.toMap(),
      'advancedDataProtectionMetrics': ?advancedDataProtectionMetrics == null
          ? null
          : advancedDataProtectionMetrics!.toMap(),
      'bucketLevel': bucketLevel.toMap(),
      'detailedStatusCodeMetrics': ?detailedStatusCodeMetrics == null
          ? null
          : detailedStatusCodeMetrics!.toMap(),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevel(
      activityMetrics: map['activityMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics.fromMap(
              (map['activityMetrics'] as Map).cast<String, dynamic>(),
            ),
      advancedCostOptimizationMetrics:
          map['advancedCostOptimizationMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics.fromMap(
              (map['advancedCostOptimizationMetrics'] as Map)
                  .cast<String, dynamic>(),
            ),
      advancedDataProtectionMetrics:
          map['advancedDataProtectionMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics.fromMap(
              (map['advancedDataProtectionMetrics'] as Map)
                  .cast<String, dynamic>(),
            ),
      bucketLevel:
          StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel.fromMap(
            (map['bucketLevel'] as Map).cast<String, dynamic>(),
          ),
      detailedStatusCodeMetrics: map['detailedStatusCodeMetrics'] == null
          ? null
          : StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics.fromMap(
              (map['detailedStatusCodeMetrics'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
