// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_activity_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_cost_optimization_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_advanced_data_protection_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_detailed_status_code_metrics.dart';
import 'storage_lens_configuration_storage_lens_configuration_account_level_bucket_level_prefix_level.dart';

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel {
  /// S3 Storage Lens activity metrics. See Activity Metrics above for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics>? activityMetrics;
  /// Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics above for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics>? advancedCostOptimizationMetrics;
  /// Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics above for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics>? advancedDataProtectionMetrics;
  /// Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics above for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics>? detailedStatusCodeMetrics;
  /// Prefix-level metrics for S3 Storage Lens. See Prefix Level below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel>? prefixLevel;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel].
  /// [activityMetrics] S3 Storage Lens activity metrics. See Activity Metrics above for more details.
  /// [advancedCostOptimizationMetrics] Advanced cost-optimization metrics for S3 Storage Lens. See Advanced Cost-Optimization Metrics above for more details.
  /// [advancedDataProtectionMetrics] Advanced data-protection metrics for S3 Storage Lens. See Advanced Data-Protection Metrics above for more details.
  /// [detailedStatusCodeMetrics] Detailed status code metrics for S3 Storage Lens. See Detailed Status Code Metrics above for more details.
  /// [prefixLevel] Prefix-level metrics for S3 Storage Lens. See Prefix Level below for more details.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    this.detailedStatusCodeMetrics,
    this.prefixLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics, Map<String, dynamic>>(activityMetrics, (value) => value.toMap()),
      'advancedCostOptimizationMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics, Map<String, dynamic>>(advancedCostOptimizationMetrics, (value) => value.toMap()),
      'advancedDataProtectionMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics, Map<String, dynamic>>(advancedDataProtectionMetrics, (value) => value.toMap()),
      'detailedStatusCodeMetrics': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics, Map<String, dynamic>>(detailedStatusCodeMetrics, (value) => value.toMap()),
      'prefixLevel': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel, Map<String, dynamic>>(prefixLevel, (value) => value.toMap()),
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel(
      activityMetrics: map['activityMetrics'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics.fromMap((map['activityMetrics']! as Map).cast<String, dynamic>())).input()).input(),
      advancedCostOptimizationMetrics: map['advancedCostOptimizationMetrics'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics.fromMap((map['advancedCostOptimizationMetrics']! as Map).cast<String, dynamic>())).input()).input(),
      advancedDataProtectionMetrics: map['advancedDataProtectionMetrics'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics.fromMap((map['advancedDataProtectionMetrics']! as Map).cast<String, dynamic>())).input()).input(),
      detailedStatusCodeMetrics: map['detailedStatusCodeMetrics'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics.fromMap((map['detailedStatusCodeMetrics']! as Map).cast<String, dynamic>())).input()).input(),
      prefixLevel: map['prefixLevel'] == null ? null : ((StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel.fromMap((map['prefixLevel']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

