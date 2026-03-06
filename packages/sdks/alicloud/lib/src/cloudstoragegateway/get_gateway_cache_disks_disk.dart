// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayCacheDisksDisk {
  /// The category of eht cache disk.
  final pulumi.Input<String> cacheDiskCategory;
  /// The size of the cache disk.
  final pulumi.Input<int> cacheDiskSizeInGb;
  /// The ID of the cache disk.
  final pulumi.Input<String> cacheId;
  /// The expiration time. Time stamp in seconds (s).
  final pulumi.Input<int> expiredTime;
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;
  /// The ID of the Gateway Cache Disk.
  final pulumi.Input<String> id;
  /// Per second of the input output.
  final pulumi.Input<int> iops;
  /// Whether it is used.
  final pulumi.Input<bool> isUsed;
  /// The cache disk inside the device name.
  final pulumi.Input<String> localFilePath;
  /// A renewal link of the cache disk.
  final pulumi.Input<String> renewUrl;
  /// The status of the resource.
  final pulumi.Input<int> status;

  /// Creates a new [GetGatewayCacheDisksDisk].
  /// [cacheDiskCategory] The category of eht cache disk.
  /// [cacheDiskSizeInGb] The size of the cache disk.
  /// [cacheId] The ID of the cache disk.
  /// [expiredTime] The expiration time. Time stamp in seconds (s).
  /// [gatewayId] The ID of the gateway.
  /// [id] The ID of the Gateway Cache Disk.
  /// [iops] Per second of the input output.
  /// [isUsed] Whether it is used.
  /// [localFilePath] The cache disk inside the device name.
  /// [renewUrl] A renewal link of the cache disk.
  /// [status] The status of the resource.
  const GetGatewayCacheDisksDisk({
    required this.cacheDiskCategory,
    required this.cacheDiskSizeInGb,
    required this.cacheId,
    required this.expiredTime,
    required this.gatewayId,
    required this.id,
    required this.iops,
    required this.isUsed,
    required this.localFilePath,
    required this.renewUrl,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDiskCategory': cacheDiskCategory,
      'cacheDiskSizeInGb': cacheDiskSizeInGb,
      'cacheId': cacheId,
      'expiredTime': expiredTime,
      'gatewayId': gatewayId,
      'id': id,
      'iops': iops,
      'isUsed': isUsed,
      'localFilePath': localFilePath,
      'renewUrl': renewUrl,
      'status': status,
    };
  }

  factory GetGatewayCacheDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetGatewayCacheDisksDisk(
      cacheDiskCategory: pulumi.Input.fromValue(map['cacheDiskCategory'] as String),
      cacheDiskSizeInGb: pulumi.Input.fromValue(map['cacheDiskSizeInGb'] as int),
      cacheId: pulumi.Input.fromValue(map['cacheId'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as int),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      iops: pulumi.Input.fromValue(map['iops'] as int),
      isUsed: pulumi.Input.fromValue(map['isUsed'] as bool),
      localFilePath: pulumi.Input.fromValue(map['localFilePath'] as String),
      renewUrl: pulumi.Input.fromValue(map['renewUrl'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
    );
  }
}

