// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level_activity_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_cost_optimization_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_data_protection_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_detailed_status_code_metrics.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevel {
  /// S3 Storage Lens activity metrics. See Activity Metrics below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics>? activityMetrics;
  /// Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics>? advancedCostOptimizationMetrics;
  /// Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics>? advancedDataProtectionMetrics;
  /// S3 Storage Lens bucket-level configuration. See Bucket Level below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel> bucketLevel;
  /// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics>? detailedStatusCodeMetrics;

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
      'activityMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics, Map<String, dynamic>>(activityMetrics, (value) => value.toMap()),
      'advancedCostOptimizationMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics, Map<String, dynamic>>(advancedCostOptimizationMetrics, (value) => value.toMap()),
      'advancedDataProtectionMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics, Map<String, dynamic>>(advancedDataProtectionMetrics, (value) => value.toMap()),
      'bucketLevel': pulumi.Input.mapInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel, Map<String, dynamic>>(bucketLevel, (value) => value.toMap()),
      'detailedStatusCodeMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics, Map<String, dynamic>>(detailedStatusCodeMetrics, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevel(
      activityMetrics: map['activityMetrics'] == null ? null : (StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics.fromMap((map['activityMetrics'] as Map).cast<String, dynamic>())).input(),
      advancedCostOptimizationMetrics: map['advancedCostOptimizationMetrics'] == null ? null : (StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics.fromMap((map['advancedCostOptimizationMetrics'] as Map).cast<String, dynamic>())).input(),
      advancedDataProtectionMetrics: map['advancedDataProtectionMetrics'] == null ? null : (StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics.fromMap((map['advancedDataProtectionMetrics'] as Map).cast<String, dynamic>())).input(),
      bucketLevel: (StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel.fromMap((map['bucketLevel'] as Map).cast<String, dynamic>())).input(),
      detailedStatusCodeMetrics: map['detailedStatusCodeMetrics'] == null ? null : (StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics.fromMap((map['detailedStatusCodeMetrics'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

