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
    pulumi.Output<String>? cacheDiskCategory,
    pulumi.Output<int>? cacheDiskSizeInGb,
    pulumi.Output<String>? cacheId,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? localFilePath,
    pulumi.Output<String>? performanceLevel,
    pulumi.Output<int>? status,
  }) :
      cacheDiskCategory = pulumi.Input.asOptionalInput<String>(cacheDiskCategory),
      cacheDiskSizeInGb = pulumi.Input.asOptionalInput<int>(cacheDiskSizeInGb),
      cacheId = pulumi.Input.asOptionalInput<String>(cacheId),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      localFilePath = pulumi.Input.asOptionalInput<String>(localFilePath),
      performanceLevel = pulumi.Input.asOptionalInput<String>(performanceLevel),
      status = pulumi.Input.asOptionalInput<int>(status);

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
      cacheDiskCategory: map['cacheDiskCategory'] == null ? null : pulumi.Output.create<String>(map['cacheDiskCategory'] as String),
      cacheDiskSizeInGb: map['cacheDiskSizeInGb'] == null ? null : pulumi.Output.create<int>(map['cacheDiskSizeInGb'] as int),
      cacheId: map['cacheId'] == null ? null : pulumi.Output.create<String>(map['cacheId'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      localFilePath: map['localFilePath'] == null ? null : pulumi.Output.create<String>(map['localFilePath'] as String),
      performanceLevel: map['performanceLevel'] == null ? null : pulumi.Output.create<String>(map['performanceLevel'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

