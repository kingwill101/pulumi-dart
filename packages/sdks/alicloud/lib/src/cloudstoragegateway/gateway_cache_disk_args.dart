// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_cache_disk_gateway_cache_disk_args_doc}
/// The set of arguments for GatewayCacheDisk.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_cache_disk_gateway_cache_disk_args_doc}
class GatewayCacheDiskArgs {
  /// The type of the cache disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`. **NOTE:** From version 1.227.0, `cache_disk_category` can be set to `cloud_essd`.
  final pulumi.Input<String>? cacheDiskCategory;
  /// The capacity of the cache disk.
  final pulumi.Input<int> cacheDiskSizeInGb;
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;
  /// The performance level (PL) of the Enterprise SSD (ESSD). Valid values: `PL1`, `PL2`, `PL3`. **NOTE:** If `cache_disk_category` is set to `cloud_essd`, `performance_level` is required.
  final pulumi.Input<String>? performanceLevel;

  /// Creates a new [GatewayCacheDiskArgs].
  /// [cacheDiskCategory] The type of the cache disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`. **NOTE:** From version 1.227.0, `cache_disk_category` can be set to `cloud_essd`.
  /// [cacheDiskSizeInGb] The capacity of the cache disk.
  /// [gatewayId] The ID of the gateway.
  /// [performanceLevel] The performance level (PL) of the Enterprise SSD (ESSD). Valid values: `PL1`, `PL2`, `PL3`. **NOTE:** If `cache_disk_category` is set to `cloud_essd`, `performance_level` is required.
  GatewayCacheDiskArgs({
    this.cacheDiskCategory,
    required this.cacheDiskSizeInGb,
    required this.gatewayId,
    this.performanceLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDiskCategory': ?cacheDiskCategory,
      'cacheDiskSizeInGb': cacheDiskSizeInGb,
      'gatewayId': gatewayId,
      'performanceLevel': ?performanceLevel,
    };
  }

  factory GatewayCacheDiskArgs.fromMap(Map<String, dynamic> map) {
    return GatewayCacheDiskArgs(
      cacheDiskCategory: map['cacheDiskCategory'] == null ? null : (map['cacheDiskCategory'] as String).input(),
      cacheDiskSizeInGb: (map['cacheDiskSizeInGb'] as int).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel'] as String).input(),
    );
  }
}

