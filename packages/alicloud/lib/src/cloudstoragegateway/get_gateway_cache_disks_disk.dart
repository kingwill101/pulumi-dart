// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayCacheDisksDisk {
  /// The category of eht cache disk.
  final String cacheDiskCategory;
  /// The size of the cache disk.
  final int cacheDiskSizeInGb;
  /// The ID of the cache disk.
  final String cacheId;
  /// The expiration time. Time stamp in seconds (s).
  final int expiredTime;
  /// The ID of the gateway.
  final String gatewayId;
  /// The ID of the Gateway Cache Disk.
  final String id;
  /// Per second of the input output.
  final int iops;
  /// Whether it is used.
  final bool isUsed;
  /// The cache disk inside the device name.
  final String localFilePath;
  /// A renewal link of the cache disk.
  final String renewUrl;
  /// The status of the resource.
  final int status;

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
  GetGatewayCacheDisksDisk({
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
      cacheDiskCategory: map['cacheDiskCategory'] as String,
      cacheDiskSizeInGb: map['cacheDiskSizeInGb'] as int,
      cacheId: map['cacheId'] as String,
      expiredTime: map['expiredTime'] as int,
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      iops: map['iops'] as int,
      isUsed: map['isUsed'] as bool,
      localFilePath: map['localFilePath'] as String,
      renewUrl: map['renewUrl'] as String,
      status: map['status'] as int,
    );
  }
}

