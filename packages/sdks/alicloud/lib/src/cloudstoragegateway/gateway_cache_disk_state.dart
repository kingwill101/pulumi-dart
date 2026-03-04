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
      cacheDiskCategory: (() {
        final guardedValue = map['cacheDiskCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheDiskSizeInGb: (() {
        final guardedValue = map['cacheDiskSizeInGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cacheId: (() {
        final guardedValue = map['cacheId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayId: (() {
        final guardedValue = map['gatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localFilePath: (() {
        final guardedValue = map['localFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      performanceLevel: (() {
        final guardedValue = map['performanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
