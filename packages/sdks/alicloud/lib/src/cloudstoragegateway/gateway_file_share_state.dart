// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayFileShare resources.
class GatewayFileShareState {
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
  final pulumi.Input<String>? gatewayFileShareName;
  /// The ID of the gateway.
  final pulumi.Input<String>? gatewayId;
  /// The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version >= 1.0.40 above support.
  final pulumi.Input<bool>? ignoreDelete;
  /// The whether debris optimization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool>? inPlace;
  /// The ID of the file share.
  final pulumi.Input<String>? indexId;
  /// The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version >= 1.0.40 above support.
  final pulumi.Input<int>? lagPeriod;
  /// The cache disk inside the device name.
  final pulumi.Input<String>? localPath;
  /// The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version >= 1.2.0 above support.
  final pulumi.Input<bool>? nfsV4Optimization;
  /// The name of the OSS Bucket.
  final pulumi.Input<String>? ossBucketName;
  /// Whether they are using SSL connect to OSS Bucket.
  final pulumi.Input<bool>? ossBucketSsl;
  /// The gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint: `oss-cn-hangzhou-internal.aliyuncs.com`.
  final pulumi.Input<String>? ossEndpoint;
  /// In part mode, the directory path group JSON format.
  final pulumi.Input<String>? partialSyncPaths;
  /// The subdirectory path under the object storage (OSS) bucket corresponding to the file share. If it is blank, it means the root directory of the bucket.
  final pulumi.Input<String>? pathPrefix;
  /// The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  final pulumi.Input<int>? pollingInterval;
  /// Share types. Valid values: `SMB`, `NFS`.
  final pulumi.Input<String>? protocol;
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

  /// Creates a new [GatewayFileShareState].
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
  /// [indexId] The ID of the file share.
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
  GatewayFileShareState({
    pulumi.Output<bool>? accessBasedEnumeration,
    pulumi.Output<int>? backendLimit,
    pulumi.Output<bool>? browsable,
    pulumi.Output<bool>? bypassCacheRead,
    pulumi.Output<String>? cacheMode,
    pulumi.Output<bool>? directIo,
    pulumi.Output<int>? downloadLimit,
    pulumi.Output<bool>? fastReclaim,
    pulumi.Output<int>? feLimit,
    pulumi.Output<String>? gatewayFileShareName,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<bool>? ignoreDelete,
    pulumi.Output<bool>? inPlace,
    pulumi.Output<String>? indexId,
    pulumi.Output<int>? lagPeriod,
    pulumi.Output<String>? localPath,
    pulumi.Output<bool>? nfsV4Optimization,
    pulumi.Output<String>? ossBucketName,
    pulumi.Output<bool>? ossBucketSsl,
    pulumi.Output<String>? ossEndpoint,
    pulumi.Output<String>? partialSyncPaths,
    pulumi.Output<String>? pathPrefix,
    pulumi.Output<int>? pollingInterval,
    pulumi.Output<String>? protocol,
    pulumi.Output<bool>? remoteSync,
    pulumi.Output<bool>? remoteSyncDownload,
    pulumi.Output<String>? roClientList,
    pulumi.Output<String>? roUserList,
    pulumi.Output<String>? rwClientList,
    pulumi.Output<String>? rwUserList,
    pulumi.Output<String>? squash,
    pulumi.Output<bool>? supportArchive,
    pulumi.Output<bool>? transferAcceleration,
    pulumi.Output<bool>? windowsAcl,
  }) :
      accessBasedEnumeration = pulumi.Input.asOptionalInput<bool>(accessBasedEnumeration),
      backendLimit = pulumi.Input.asOptionalInput<int>(backendLimit),
      browsable = pulumi.Input.asOptionalInput<bool>(browsable),
      bypassCacheRead = pulumi.Input.asOptionalInput<bool>(bypassCacheRead),
      cacheMode = pulumi.Input.asOptionalInput<String>(cacheMode),
      directIo = pulumi.Input.asOptionalInput<bool>(directIo),
      downloadLimit = pulumi.Input.asOptionalInput<int>(downloadLimit),
      fastReclaim = pulumi.Input.asOptionalInput<bool>(fastReclaim),
      feLimit = pulumi.Input.asOptionalInput<int>(feLimit),
      gatewayFileShareName = pulumi.Input.asOptionalInput<String>(gatewayFileShareName),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      ignoreDelete = pulumi.Input.asOptionalInput<bool>(ignoreDelete),
      inPlace = pulumi.Input.asOptionalInput<bool>(inPlace),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      lagPeriod = pulumi.Input.asOptionalInput<int>(lagPeriod),
      localPath = pulumi.Input.asOptionalInput<String>(localPath),
      nfsV4Optimization = pulumi.Input.asOptionalInput<bool>(nfsV4Optimization),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      ossBucketSsl = pulumi.Input.asOptionalInput<bool>(ossBucketSsl),
      ossEndpoint = pulumi.Input.asOptionalInput<String>(ossEndpoint),
      partialSyncPaths = pulumi.Input.asOptionalInput<String>(partialSyncPaths),
      pathPrefix = pulumi.Input.asOptionalInput<String>(pathPrefix),
      pollingInterval = pulumi.Input.asOptionalInput<int>(pollingInterval),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      remoteSync = pulumi.Input.asOptionalInput<bool>(remoteSync),
      remoteSyncDownload = pulumi.Input.asOptionalInput<bool>(remoteSyncDownload),
      roClientList = pulumi.Input.asOptionalInput<String>(roClientList),
      roUserList = pulumi.Input.asOptionalInput<String>(roUserList),
      rwClientList = pulumi.Input.asOptionalInput<String>(rwClientList),
      rwUserList = pulumi.Input.asOptionalInput<String>(rwUserList),
      squash = pulumi.Input.asOptionalInput<String>(squash),
      supportArchive = pulumi.Input.asOptionalInput<bool>(supportArchive),
      transferAcceleration = pulumi.Input.asOptionalInput<bool>(transferAcceleration),
      windowsAcl = pulumi.Input.asOptionalInput<bool>(windowsAcl);

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
      'gatewayFileShareName': ?gatewayFileShareName,
      'gatewayId': ?gatewayId,
      'ignoreDelete': ?ignoreDelete,
      'inPlace': ?inPlace,
      'indexId': ?indexId,
      'lagPeriod': ?lagPeriod,
      'localPath': ?localPath,
      'nfsV4Optimization': ?nfsV4Optimization,
      'ossBucketName': ?ossBucketName,
      'ossBucketSsl': ?ossBucketSsl,
      'ossEndpoint': ?ossEndpoint,
      'partialSyncPaths': ?partialSyncPaths,
      'pathPrefix': ?pathPrefix,
      'pollingInterval': ?pollingInterval,
      'protocol': ?protocol,
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

  factory GatewayFileShareState.fromMap(Map<String, dynamic> map) {
    return GatewayFileShareState(
      accessBasedEnumeration: map['accessBasedEnumeration'] == null ? null : pulumi.Output.create<bool>(map['accessBasedEnumeration'] as bool),
      backendLimit: map['backendLimit'] == null ? null : pulumi.Output.create<int>(map['backendLimit'] as int),
      browsable: map['browsable'] == null ? null : pulumi.Output.create<bool>(map['browsable'] as bool),
      bypassCacheRead: map['bypassCacheRead'] == null ? null : pulumi.Output.create<bool>(map['bypassCacheRead'] as bool),
      cacheMode: map['cacheMode'] == null ? null : pulumi.Output.create<String>(map['cacheMode'] as String),
      directIo: map['directIo'] == null ? null : pulumi.Output.create<bool>(map['directIo'] as bool),
      downloadLimit: map['downloadLimit'] == null ? null : pulumi.Output.create<int>(map['downloadLimit'] as int),
      fastReclaim: map['fastReclaim'] == null ? null : pulumi.Output.create<bool>(map['fastReclaim'] as bool),
      feLimit: map['feLimit'] == null ? null : pulumi.Output.create<int>(map['feLimit'] as int),
      gatewayFileShareName: map['gatewayFileShareName'] == null ? null : pulumi.Output.create<String>(map['gatewayFileShareName'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      ignoreDelete: map['ignoreDelete'] == null ? null : pulumi.Output.create<bool>(map['ignoreDelete'] as bool),
      inPlace: map['inPlace'] == null ? null : pulumi.Output.create<bool>(map['inPlace'] as bool),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      lagPeriod: map['lagPeriod'] == null ? null : pulumi.Output.create<int>(map['lagPeriod'] as int),
      localPath: map['localPath'] == null ? null : pulumi.Output.create<String>(map['localPath'] as String),
      nfsV4Optimization: map['nfsV4Optimization'] == null ? null : pulumi.Output.create<bool>(map['nfsV4Optimization'] as bool),
      ossBucketName: map['ossBucketName'] == null ? null : pulumi.Output.create<String>(map['ossBucketName'] as String),
      ossBucketSsl: map['ossBucketSsl'] == null ? null : pulumi.Output.create<bool>(map['ossBucketSsl'] as bool),
      ossEndpoint: map['ossEndpoint'] == null ? null : pulumi.Output.create<String>(map['ossEndpoint'] as String),
      partialSyncPaths: map['partialSyncPaths'] == null ? null : pulumi.Output.create<String>(map['partialSyncPaths'] as String),
      pathPrefix: map['pathPrefix'] == null ? null : pulumi.Output.create<String>(map['pathPrefix'] as String),
      pollingInterval: map['pollingInterval'] == null ? null : pulumi.Output.create<int>(map['pollingInterval'] as int),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      remoteSync: map['remoteSync'] == null ? null : pulumi.Output.create<bool>(map['remoteSync'] as bool),
      remoteSyncDownload: map['remoteSyncDownload'] == null ? null : pulumi.Output.create<bool>(map['remoteSyncDownload'] as bool),
      roClientList: map['roClientList'] == null ? null : pulumi.Output.create<String>(map['roClientList'] as String),
      roUserList: map['roUserList'] == null ? null : pulumi.Output.create<String>(map['roUserList'] as String),
      rwClientList: map['rwClientList'] == null ? null : pulumi.Output.create<String>(map['rwClientList'] as String),
      rwUserList: map['rwUserList'] == null ? null : pulumi.Output.create<String>(map['rwUserList'] as String),
      squash: map['squash'] == null ? null : pulumi.Output.create<String>(map['squash'] as String),
      supportArchive: map['supportArchive'] == null ? null : pulumi.Output.create<bool>(map['supportArchive'] as bool),
      transferAcceleration: map['transferAcceleration'] == null ? null : pulumi.Output.create<bool>(map['transferAcceleration'] as bool),
      windowsAcl: map['windowsAcl'] == null ? null : pulumi.Output.create<bool>(map['windowsAcl'] as bool),
    );
  }
}

