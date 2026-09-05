// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level_activity_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_cost_optimization_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_data_protection_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_advanced_performance_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_detailed_status_code_metrics.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevel {
  /// S3 Storage Lens activity metrics. See `activityMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics?>? activityMetrics;
  /// Advanced cost-optimization metrics for S3 Storage Lens. See `advancedCostOptimizationMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics?>? advancedCostOptimizationMetrics;
  /// Advanced data-protection metrics for S3 Storage Lens. See `advancedDataProtectionMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics?>? advancedDataProtectionMetrics;
  /// Advanced performance metrics for S3 Storage Lens. See `advancedPerformanceMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics?>? advancedPerformanceMetrics;
  /// S3 Storage Lens bucket-level configuration. See `bucketLevel` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel> bucketLevel;
  /// Detailed status code metrics for S3 Storage Lens. See `detailedStatusCodeMetrics` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics?>? detailedStatusCodeMetrics;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevel].
  /// [activityMetrics] S3 Storage Lens activity metrics. See `activityMetrics` below for more details.
  /// [advancedCostOptimizationMetrics] Advanced cost-optimization metrics for S3 Storage Lens. See `advancedCostOptimizationMetrics` below for more details.
  /// [advancedDataProtectionMetrics] Advanced data-protection metrics for S3 Storage Lens. See `advancedDataProtectionMetrics` below for more details.
  /// [advancedPerformanceMetrics] Advanced performance metrics for S3 Storage Lens. See `advancedPerformanceMetrics` below for more details.
  /// [bucketLevel] S3 Storage Lens bucket-level configuration. See `bucketLevel` below for more details.
  /// [detailedStatusCodeMetrics] Detailed status code metrics for S3 Storage Lens. See `detailedStatusCodeMetrics` below for more details.
  const StorageLensConfigurationStorageLensConfigurationAccountLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    this.advancedPerformanceMetrics,
    required this.bucketLevel,
    this.detailedStatusCodeMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics, Map<String, dynamic>>(activityMetrics, (value) => value.toMap()),
      'advancedCostOptimizationMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics, Map<String, dynamic>>(advancedCostOptimizationMetrics, (value) => value.toMap()),
      'advancedDataProtectionMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics, Map<String, dynamic>>(advancedDataProtectionMetrics, (value) => value.toMap()),
      'advancedPerformanceMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics, Map<String, dynamic>>(advancedPerformanceMetrics, (value) => value.toMap()),
      'bucketLevel': pulumi.Input.mapInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel, Map<String, dynamic>>(bucketLevel, (value) => value.toMap()),
      'detailedStatusCodeMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics, Map<String, dynamic>>(detailedStatusCodeMetrics, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevel.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevel(
      activityMetrics: (() { final guardedValue = map['activityMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedCostOptimizationMetrics: (() { final guardedValue = map['advancedCostOptimizationMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedDataProtectionMetrics: (() { final guardedValue = map['advancedDataProtectionMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedPerformanceMetrics: (() { final guardedValue = map['advancedPerformanceMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucketLevel: pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel.fromMap((map['bucketLevel']! as Map).cast<String, dynamic>())),
      detailedStatusCodeMetrics: (() { final guardedValue = map['detailedStatusCodeMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
