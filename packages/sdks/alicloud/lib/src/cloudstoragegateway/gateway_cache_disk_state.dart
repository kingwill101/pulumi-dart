// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayCacheDisk resources.
class GatewayCacheDiskState {
  /// The type of the cache disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`. **NOTE:** From version 1.227.0, `cache_disk_category` can be set to `cloud_essd`.
  final pulumi.Input<String>? cacheDiskCategory;
  /// The capacity of the cache disk.
  final pulumi.Input<int>? cacheDiskSizeInGb;
  /// The ID of the cache disk.
  final pulumi.Input<String>? cacheId;
  /// The ID of the gateway.
  final pulumi.Input<String>? gatewayId;
  /// The path of the cache disk.
  final pulumi.Input<String>? localFilePath;
  /// The performance level (PL) of the Enterprise SSD (ESSD). Valid values: `PL1`, `PL2`, `PL3`. **NOTE:** If `cache_disk_category` is set to `cloud_essd`, `performance_level` is required.
  final pulumi.Input<String>? performanceLevel;
  /// The status of the Gateway Cache Disk.
  final pulumi.Input<int>? status;

  /// Creates a new [GatewayCacheDiskState].
  /// [cacheDiskCategory] The type of the cache disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`. **NOTE:** From version 1.227.0, `cache_disk_category` can be set to `cloud_essd`.
  /// [cacheDiskSizeInGb] The capacity of the cache disk.
  /// [cacheId] The ID of the cache disk.
  /// [gatewayId] The ID of the gateway.
  /// [localFilePath] The path of the cache disk.
  /// [performanceLevel] The performance level (PL) of the Enterprise SSD (ESSD). Valid values: `PL1`, `PL2`, `PL3`. **NOTE:** If `cache_disk_category` is set to `cloud_essd`, `performance_level` is required.
  /// [status] The status of the Gateway Cache Disk.
  GatewayCacheDiskState({
    this.cacheDiskCategory,
    this.cacheDiskSizeInGb,
    this.cacheId,
    this.gatewayId,
    this.localFilePath,
    this.performanceLevel,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDiskCategory': ?cacheDiskCategory,
      'cacheDiskSizeInGb': ?cacheDiskSizeInGb,
      'cacheId': ?cacheId,
      'gatewayId': ?gatewayId,
      'localFilePath': ?localFilePath,
      'performanceLevel': ?performanceLevel,
      'status': ?status,
    };
  }

  factory GatewayCacheDiskState.fromMap(Map<String, dynamic> map) {
    return GatewayCacheDiskState(
      cacheDiskCategory: map['cacheDiskCategory'] == null ? null : (map['cacheDiskCategory']! as String).input(),
      cacheDiskSizeInGb: map['cacheDiskSizeInGb'] == null ? null : (map['cacheDiskSizeInGb']! as int).input(),
      cacheId: map['cacheId'] == null ? null : (map['cacheId']! as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId']! as String).input(),
      localFilePath: map['localFilePath'] == null ? null : (map['localFilePath']! as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
    );
  }
}

