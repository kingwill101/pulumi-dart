// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_file_share_gateway_file_share_args_doc}
/// The set of arguments for GatewayFileShare.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_file_share_gateway_file_share_args_doc}
class GatewayFileShareArgs {
  /// Whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  final pulumi.Input<bool>? accessBasedEnumeration;
  /// The Max upload speed of the gateway file share. Unit: `MB/s`, 0 means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  final pulumi.Input<int>? backendLimit;
  /// The whether browsable of the gateway file share (that is, in the network neighborhood of whether you can find). The attribute is valid when the attribute `protocol` is `SMB`. Default value: `true`.
  final pulumi.Input<bool>? browsable;
  /// Direct reading OSS of the gateway file share.
  final pulumi.Input<bool>? bypassCacheRead;
  /// The set up gateway file share cache mode. Valid values: `Cache` or `Sync`. `Cache`: cached mode. `Sync`: replication mode are available. Default value: `Cache`.
  final pulumi.Input<String>? cacheMode;
  /// File sharing Whether to enable DirectIO (direct I/O mode for data transmission). Default value: `false`.
  final pulumi.Input<bool>? directIo;
  /// The maximum download speed of the gateway file share. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version >= 1.3.0 above support.
  final pulumi.Input<int>? downloadLimit;
  /// The whether to enable Upload optimization of the gateway file share, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version >= 1.0.39 above support.
  final pulumi.Input<bool>? fastReclaim;
  /// The maximum write speed of the gateway file share. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  final pulumi.Input<int>? feLimit;
  /// The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  final pulumi.Input<String> gatewayFileShareName;
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;
  /// The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version >= 1.0.40 above support.
  final pulumi.Input<bool>? ignoreDelete;
  /// The whether debris optimization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool>? inPlace;
  /// The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version >= 1.0.40 above support.
  final pulumi.Input<int>? lagPeriod;
  /// The cache disk inside the device name.
  final pulumi.Input<String> localPath;
  /// The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version >= 1.2.0 above support.
  final pulumi.Input<bool>? nfsV4Optimization;
  /// The name of the OSS Bucket.
  final pulumi.Input<String> ossBucketName;
  /// Whether they are using SSL connect to OSS Bucket.
  final pulumi.Input<bool>? ossBucketSsl;
  /// The gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint: `oss-cn-hangzhou-internal.aliyuncs.com`.
  final pulumi.Input<String> ossEndpoint;
  /// In part mode, the directory path group JSON format.
  final pulumi.Input<String>? partialSyncPaths;
  /// The subdirectory path under the object storage (OSS) bucket corresponding to the file share. If it is blank, it means the root directory of the bucket.
  final pulumi.Input<String>? pathPrefix;
  /// The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  final pulumi.Input<int>? pollingInterval;
  /// Share types. Valid values: `SMB`, `NFS`.
  final pulumi.Input<String> protocol;
  /// Whether to enable reverse synchronization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool>? remoteSync;
  /// Copy mode, whether to download the file data. Default value: `false`. **NOTE:** only when the attribute `remote_sync` is `true` or acceded to by the speed synchronization group, this parameter will not take effect.
  final pulumi.Input<bool>? remoteSyncDownload;
  /// File sharing NFS read-only client list (IP address or IP address range). Use commas (,) to separate multiple clients.
  final pulumi.Input<String>? roClientList;
  /// The read-only client list. When Protocol for Server Message Block (SMB) to go back to.
  final pulumi.Input<String>? roUserList;
  /// Read and write the client list. When Protocol NFS is returned when the status is.
  final pulumi.Input<String>? rwClientList;
  /// Read-write user list. When Protocol for Server Message Block (SMB) to go back to.
  final pulumi.Input<String>? rwUserList;
  /// The NFS protocol user mapping of the gateway file share. Valid values: `none`, `root_squash`, `all_squash`, `all_anonymous`. Default value: `none`. **NOTE:** The attribute is valid when the attribute `protocol` is `NFS`.
  final pulumi.Input<String>? squash;
  /// Whether to support the archive transparent read.
  final pulumi.Input<bool>? supportArchive;
  /// The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version >= 1.3.0 above support.
  final pulumi.Input<bool>? transferAcceleration;
  /// Whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  final pulumi.Input<bool>? windowsAcl;

  /// Creates a new [GatewayFileShareArgs].
  /// [accessBasedEnumeration] Whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  /// [backendLimit] The Max upload speed of the gateway file share. Unit: `MB/s`, 0 means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  /// [browsable] The whether browsable of the gateway file share (that is, in the network neighborhood of whether you can find). The attribute is valid when the attribute `protocol` is `SMB`. Default value: `true`.
  /// [bypassCacheRead] Direct reading OSS of the gateway file share.
  /// [cacheMode] The set up gateway file share cache mode. Valid values: `Cache` or `Sync`. `Cache`: cached mode. `Sync`: replication mode are available. Default value: `Cache`.
  /// [directIo] File sharing Whether to enable DirectIO (direct I/O mode for data transmission). Default value: `false`.
  /// [downloadLimit] The maximum download speed of the gateway file share. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version >= 1.3.0 above support.
  /// [fastReclaim] The whether to enable Upload optimization of the gateway file share, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version >= 1.0.39 above support.
  /// [feLimit] The maximum write speed of the gateway file share. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  /// [gatewayFileShareName] The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  /// [gatewayId] The ID of the gateway.
  /// [ignoreDelete] The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version >= 1.0.40 above support.
  /// [inPlace] The whether debris optimization of the gateway file share. Default value: `false`.
  /// [lagPeriod] The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version >= 1.0.40 above support.
  /// [localPath] The cache disk inside the device name.
  /// [nfsV4Optimization] The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version >= 1.2.0 above support.
  /// [ossBucketName] The name of the OSS Bucket.
  /// [ossBucketSsl] Whether they are using SSL connect to OSS Bucket.
  /// [ossEndpoint] The gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint: `oss-cn-hangzhou-internal.aliyuncs.com`.
  /// [partialSyncPaths] In part mode, the directory path group JSON format.
  /// [pathPrefix] The subdirectory path under the object storage (OSS) bucket corresponding to the file share. If it is blank, it means the root directory of the bucket.
  /// [pollingInterval] The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  /// [protocol] Share types. Valid values: `SMB`, `NFS`.
  /// [remoteSync] Whether to enable reverse synchronization of the gateway file share. Default value: `false`.
  /// [remoteSyncDownload] Copy mode, whether to download the file data. Default value: `false`. **NOTE:** only when the attribute `remote_sync` is `true` or acceded to by the speed synchronization group, this parameter will not take effect.
  /// [roClientList] File sharing NFS read-only client list (IP address or IP address range). Use commas (,) to separate multiple clients.
  /// [roUserList] The read-only client list. When Protocol for Server Message Block (SMB) to go back to.
  /// [rwClientList] Read and write the client list. When Protocol NFS is returned when the status is.
  /// [rwUserList] Read-write user list. When Protocol for Server Message Block (SMB) to go back to.
  /// [squash] The NFS protocol user mapping of the gateway file share. Valid values: `none`, `root_squash`, `all_squash`, `all_anonymous`. Default value: `none`. **NOTE:** The attribute is valid when the attribute `protocol` is `NFS`.
  /// [supportArchive] Whether to support the archive transparent read.
  /// [transferAcceleration] The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version >= 1.3.0 above support.
  /// [windowsAcl] Whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version >= 1.0.45 above support.
  GatewayFileShareArgs({
    this.accessBasedEnumeration,
    this.backendLimit,
    this.browsable,
    this.bypassCacheRead,
    this.cacheMode,
    this.directIo,
    this.downloadLimit,
    this.fastReclaim,
    this.feLimit,
    required this.gatewayFileShareName,
    required this.gatewayId,
    this.ignoreDelete,
    this.inPlace,
    this.lagPeriod,
    required this.localPath,
    this.nfsV4Optimization,
    required this.ossBucketName,
    this.ossBucketSsl,
    required this.ossEndpoint,
    this.partialSyncPaths,
    this.pathPrefix,
    this.pollingInterval,
    required this.protocol,
    this.remoteSync,
    this.remoteSyncDownload,
    this.roClientList,
    this.roUserList,
    this.rwClientList,
    this.rwUserList,
    this.squash,
    this.supportArchive,
    this.transferAcceleration,
    this.windowsAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBasedEnumeration': ?accessBasedEnumeration,
      'backendLimit': ?backendLimit,
      'browsable': ?browsable,
      'bypassCacheRead': ?bypassCacheRead,
      'cacheMode': ?cacheMode,
      'directIo': ?directIo,
      'downloadLimit': ?downloadLimit,
      'fastReclaim': ?fastReclaim,
      'feLimit': ?feLimit,
      'gatewayFileShareName': gatewayFileShareName,
      'gatewayId': gatewayId,
      'ignoreDelete': ?ignoreDelete,
      'inPlace': ?inPlace,
      'lagPeriod': ?lagPeriod,
      'localPath': localPath,
      'nfsV4Optimization': ?nfsV4Optimization,
      'ossBucketName': ossBucketName,
      'ossBucketSsl': ?ossBucketSsl,
      'ossEndpoint': ossEndpoint,
      'partialSyncPaths': ?partialSyncPaths,
      'pathPrefix': ?pathPrefix,
      'pollingInterval': ?pollingInterval,
      'protocol': protocol,
      'remoteSync': ?remoteSync,
      'remoteSyncDownload': ?remoteSyncDownload,
      'roClientList': ?roClientList,
      'roUserList': ?roUserList,
      'rwClientList': ?rwClientList,
      'rwUserList': ?rwUserList,
      'squash': ?squash,
      'supportArchive': ?supportArchive,
      'transferAcceleration': ?transferAcceleration,
      'windowsAcl': ?windowsAcl,
    };
  }

  factory GatewayFileShareArgs.fromMap(Map<String, dynamic> map) {
    return GatewayFileShareArgs(
      accessBasedEnumeration: map['accessBasedEnumeration'] == null ? null : (map['accessBasedEnumeration']! as bool).input(),
      backendLimit: map['backendLimit'] == null ? null : (map['backendLimit']! as int).input(),
      browsable: map['browsable'] == null ? null : (map['browsable']! as bool).input(),
      bypassCacheRead: map['bypassCacheRead'] == null ? null : (map['bypassCacheRead']! as bool).input(),
      cacheMode: map['cacheMode'] == null ? null : (map['cacheMode']! as String).input(),
      directIo: map['directIo'] == null ? null : (map['directIo']! as bool).input(),
      downloadLimit: map['downloadLimit'] == null ? null : (map['downloadLimit']! as int).input(),
      fastReclaim: map['fastReclaim'] == null ? null : (map['fastReclaim']! as bool).input(),
      feLimit: map['feLimit'] == null ? null : (map['feLimit']! as int).input(),
      gatewayFileShareName: (map['gatewayFileShareName'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      ignoreDelete: map['ignoreDelete'] == null ? null : (map['ignoreDelete']! as bool).input(),
      inPlace: map['inPlace'] == null ? null : (map['inPlace']! as bool).input(),
      lagPeriod: map['lagPeriod'] == null ? null : (map['lagPeriod']! as int).input(),
      localPath: (map['localPath'] as String).input(),
      nfsV4Optimization: map['nfsV4Optimization'] == null ? null : (map['nfsV4Optimization']! as bool).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      ossBucketSsl: map['ossBucketSsl'] == null ? null : (map['ossBucketSsl']! as bool).input(),
      ossEndpoint: (map['ossEndpoint'] as String).input(),
      partialSyncPaths: map['partialSyncPaths'] == null ? null : (map['partialSyncPaths']! as String).input(),
      pathPrefix: map['pathPrefix'] == null ? null : (map['pathPrefix']! as String).input(),
      pollingInterval: map['pollingInterval'] == null ? null : (map['pollingInterval']! as int).input(),
      protocol: (map['protocol'] as String).input(),
      remoteSync: map['remoteSync'] == null ? null : (map['remoteSync']! as bool).input(),
      remoteSyncDownload: map['remoteSyncDownload'] == null ? null : (map['remoteSyncDownload']! as bool).input(),
      roClientList: map['roClientList'] == null ? null : (map['roClientList']! as String).input(),
      roUserList: map['roUserList'] == null ? null : (map['roUserList']! as String).input(),
      rwClientList: map['rwClientList'] == null ? null : (map['rwClientList']! as String).input(),
      rwUserList: map['rwUserList'] == null ? null : (map['rwUserList']! as String).input(),
      squash: map['squash'] == null ? null : (map['squash']! as String).input(),
      supportArchive: map['supportArchive'] == null ? null : (map['supportArchive']! as bool).input(),
      transferAcceleration: map['transferAcceleration'] == null ? null : (map['transferAcceleration']! as bool).input(),
      windowsAcl: map['windowsAcl'] == null ? null : (map['windowsAcl']! as bool).input(),
    );
  }
}

