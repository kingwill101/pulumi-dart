// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayFileSharesShare {
  /// The set up gateway file share Server Message Block (SMB) protocol, whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.45 above support.
  final pulumi.Input<bool> accessBasedEnumeration;
  /// Share the private IP address of the RDS instance.
  final pulumi.Input<String> address;
  /// The set up gateway file share Max upload speed. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  final pulumi.Input<int> backendLimit;
  /// The set up gateway file share Server Message Block (SMB) protocol whether browsable (that is, in the network neighborhood of whether you can find). The parameters in the NFS protocol not valid under. Default value: `true`.
  final pulumi.Input<bool> browsable;
  /// Multi-Bucket information.
  final pulumi.Input<String> bucketInfos;
  /// Whether there are multiple buckets.
  final pulumi.Input<bool> bucketsStub;
  /// Direct reading OSS of the gateway file share.
  final pulumi.Input<bool> bypassCacheRead;
  /// The cache mode of the gateway file share. Value range: Cache: cached mode. Sync: replication mode are available.
  final pulumi.Input<String> cacheMode;
  /// File share is enabled to client-side encryption, the encryption by the use of the KMS key. **NOTE:** note: This KMS key must be the gateway and is in the same Region.
  final pulumi.Input<String> clientSideCmk;
  /// Whether to enabled to client-side encryption of the gateway file share. Default value: `false`. **NOTE:** need to contact us open whitelist before you can the settings, and only supports enhanced more than online gateway, at the same time, server-side encryption and to client-side encryption can not simultaneously configuration.
  final pulumi.Input<bool> clientSideEncryption;
  /// Whether directio (direct I/O data transfer) is enabled for file share. Default: `false`.
  final pulumi.Input<bool> directIo;
  /// The ID of the disk.
  final pulumi.Input<String> diskId;
  /// The cache disk type. Valid values: `cloud_efficiency`: Ultra cloud disk. `cloud_ssd`:SSD cloud disk.
  final pulumi.Input<String> diskType;
  /// The set up gateway file share maximum download speed. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version &gt;= 1.3.0 above support.
  final pulumi.Input<int> downloadLimit;
  /// Shared whether the changes take effect.
  final pulumi.Input<bool> enabled;
  /// Speed synchronization group ID.
  final pulumi.Input<String> expressSyncId;
  /// The set up gateway file share whether to enable Upload optimization, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.39 above support.
  final pulumi.Input<bool> fastReclaim;
  /// The set up gateway file share and the maximum write speed. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  final pulumi.Input<int> feLimit;
  /// Supported by the file system file number.
  final pulumi.Input<String> fileNumLimit;
  /// File system capacity. Unit: `B`.
  final pulumi.Input<String> fsSizeLimit;
  /// The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  final pulumi.Input<String> gatewayFileShareName;
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;
  /// The ID of the Gateway File Share.
  final pulumi.Input<String> id;
  /// Whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  final pulumi.Input<bool> ignoreDelete;
  /// Whether debris optimization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool> inPlace;
  /// Cache growth. Unit: `B/s`.
  final pulumi.Input<String> inRate;
  /// The ID of the file share.
  final pulumi.Input<String> indexId;
  /// File share is enabled to client-side encryption, key rotation period of time. Seconds. 0 represents no rotation. Rotation of the value range: `3600` ~ `86400`. Default value: `0`.
  final pulumi.Input<int> kmsRotatePeriod;
  /// The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  final pulumi.Input<String> lagPeriod;
  /// The cache disk inside the device name.
  final pulumi.Input<String> localPath;
  /// The messages from the queue health types. Valid values: `TopicAndQueueFailure`: A Message Queuing message theme can be accessed during the black hole period. `TopicFailure`: a message theme can be accessed during the black hole period. `MNSFullSyncInit`: full synchronization wait. `MNSFullSyncing`: full synchronization in progress. `QueueFailure`: a message queue can be accessed during the black hole period. `MNSNotEnabled`: Top speed synchronization is not enabled. `MNSHealthy`: sync fine.
  final pulumi.Input<String> mnsHealth;
  /// The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** turns on after I will not support NFS v3 mount the filesystem on a. Gateway version &gt;= 1.2.0 above support.
  final pulumi.Input<bool> nfsV4Optimization;
  /// Multi-Bucket, removing the Bucket.
  final pulumi.Input<String> obsoleteBuckets;
  /// The name of the Bucket.
  final pulumi.Input<String> ossBucketName;
  /// Whether they are using SSL connect to OSS Bucket.
  final pulumi.Input<bool> ossBucketSsl;
  /// The set up gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint:oss-cn-hangzhou-internal.aliyuncs.com.
  final pulumi.Input<String> ossEndpoint;
  /// The OSS Bucket of type. Valid values: `BucketHealthy`: OSS connectivity. `BucketAccessDenied`: OBJECT STORAGE Service (OSS) access to an exception. `BucketMiscFailure`: OBJECT STORAGE Service (OSS) access to additional exception. `BucketNetworkFailure`: OBJECT STORAGE Service (OSS) access network an exception. `BucketNotExist`: OSS Bucket does not exist. `Nothing returns`: We may not have ever known existed.
  final pulumi.Input<String> ossHealth;
  /// For a cloud-based data is. Unit: `B`.
  final pulumi.Input<String> ossUsed;
  /// Upload speed. Unit: `B/s`.
  final pulumi.Input<String> outRate;
  /// In part mode, the directory path group JSON format.
  final pulumi.Input<String> partialSyncPaths;
  /// The prefix of the OSS.
  final pulumi.Input<String> pathPrefix;
  /// The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  final pulumi.Input<int> pollingInterval;
  /// Share types. Valid values: `SMB`, `NFS`.
  final pulumi.Input<String> protocol;
  /// You can use the metadata space. Unit: `B`.
  final pulumi.Input<String> remainingMetaSpace;
  /// Whether to enable reverse synchronization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool> remoteSync;
  /// Copy mode, whether to download the file data. Default value: `false`. **NOTE:** only when the shared opens the reverse synchronization or acceded to by the speed synchronization group, this parameter will not take effect.
  final pulumi.Input<bool> remoteSyncDownload;
  /// The read-only client list. When Protocol NFS is returned when the status is.
  final pulumi.Input<String> roClientList;
  /// The read-only client list. When Protocol for Server Message Block (SMB) to go back to.
  final pulumi.Input<String> roUserList;
  /// Read and write the client list. When Protocol NFS is returned when the status is.
  final pulumi.Input<String> rwClientList;
  /// Read-write user list. When Protocol for Server Message Block (SMB) to go back to.
  final pulumi.Input<String> rwUserList;
  /// File share is enabled server-side encryption, encryption used by the KMS key.
  final pulumi.Input<String> serverSideCmk;
  /// If the OSS Bucket side encryption.
  final pulumi.Input<bool> serverSideEncryption;
  /// The caching capacity. Unit: `B`.
  final pulumi.Input<String> size;
  /// The set up gateway file share NFS protocol user mapping. Valid values: `none`, `root_squash`, `all_squash`, `all_anonymous`. Default value: `none`.
  final pulumi.Input<String> squash;
  /// File synchronization types. Valid values: `clean`, `dirty`. `clean`: synchronization is complete. `dirty`: synchronization has not been completed.
  final pulumi.Input<String> state;
  /// Whether to support the archive transparent read.
  final pulumi.Input<bool> supportArchive;
  /// Full synchronization progress. When the share has been added for a synchronization group, the return parameters are valid, that shared full synchronization progress (0~100). `-2`: indicates that share the Gateway version does not support this feature. `-1`: the share does not occur full synchronization.
  final pulumi.Input<int> syncProgress;
  /// The OSS Bucket to the Gateway total downloads. Unit: `B`.
  final pulumi.Input<String> totalDownload;
  /// The OSS Bucket to the Gateway total Upload amount. Unit: `B`.
  final pulumi.Input<String> totalUpload;
  /// The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version &gt;= 1.3.0 above support.
  final pulumi.Input<bool> transferAcceleration;
  /// Used cache. Unit: `B`.
  final pulumi.Input<String> used;
  /// The set up gateway file share Server Message Block (SMB) protocol, whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.45 above support.
  final pulumi.Input<bool> windowsAcl;

  /// Creates a new [GetGatewayFileSharesShare].
  /// [accessBasedEnumeration] The set up gateway file share Server Message Block (SMB) protocol, whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.45 above support.
  /// [address] Share the private IP address of the RDS instance.
  /// [backendLimit] The set up gateway file share Max upload speed. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  /// [browsable] The set up gateway file share Server Message Block (SMB) protocol whether browsable (that is, in the network neighborhood of whether you can find). The parameters in the NFS protocol not valid under. Default value: `true`.
  /// [bucketInfos] Multi-Bucket information.
  /// [bucketsStub] Whether there are multiple buckets.
  /// [bypassCacheRead] Direct reading OSS of the gateway file share.
  /// [cacheMode] The cache mode of the gateway file share. Value range: Cache: cached mode. Sync: replication mode are available.
  /// [clientSideCmk] File share is enabled to client-side encryption, the encryption by the use of the KMS key. **NOTE:** note: This KMS key must be the gateway and is in the same Region.
  /// [clientSideEncryption] Whether to enabled to client-side encryption of the gateway file share. Default value: `false`. **NOTE:** need to contact us open whitelist before you can the settings, and only supports enhanced more than online gateway, at the same time, server-side encryption and to client-side encryption can not simultaneously configuration.
  /// [directIo] Whether directio (direct I/O data transfer) is enabled for file share. Default: `false`.
  /// [diskId] The ID of the disk.
  /// [diskType] The cache disk type. Valid values: `cloud_efficiency`: Ultra cloud disk. `cloud_ssd`:SSD cloud disk.
  /// [downloadLimit] The set up gateway file share maximum download speed. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version &gt;= 1.3.0 above support.
  /// [enabled] Shared whether the changes take effect.
  /// [expressSyncId] Speed synchronization group ID.
  /// [fastReclaim] The set up gateway file share whether to enable Upload optimization, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.39 above support.
  /// [feLimit] The set up gateway file share and the maximum write speed. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  /// [fileNumLimit] Supported by the file system file number.
  /// [fsSizeLimit] File system capacity. Unit: `B`.
  /// [gatewayFileShareName] The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  /// [gatewayId] The ID of the gateway.
  /// [id] The ID of the Gateway File Share.
  /// [ignoreDelete] Whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  /// [inPlace] Whether debris optimization of the gateway file share. Default value: `false`.
  /// [inRate] Cache growth. Unit: `B/s`.
  /// [indexId] The ID of the file share.
  /// [kmsRotatePeriod] File share is enabled to client-side encryption, key rotation period of time. Seconds. 0 represents no rotation. Rotation of the value range: `3600` ~ `86400`. Default value: `0`.
  /// [lagPeriod] The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  /// [localPath] The cache disk inside the device name.
  /// [mnsHealth] The messages from the queue health types. Valid values: `TopicAndQueueFailure`: A Message Queuing message theme can be accessed during the black hole period. `TopicFailure`: a message theme can be accessed during the black hole period. `MNSFullSyncInit`: full synchronization wait. `MNSFullSyncing`: full synchronization in progress. `QueueFailure`: a message queue can be accessed during the black hole period. `MNSNotEnabled`: Top speed synchronization is not enabled. `MNSHealthy`: sync fine.
  /// [nfsV4Optimization] The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** turns on after I will not support NFS v3 mount the filesystem on a. Gateway version &gt;= 1.2.0 above support.
  /// [obsoleteBuckets] Multi-Bucket, removing the Bucket.
  /// [ossBucketName] The name of the Bucket.
  /// [ossBucketSsl] Whether they are using SSL connect to OSS Bucket.
  /// [ossEndpoint] The set up gateway file share corresponds to the Object Storage SERVICE (OSS), Bucket Endpoint. **NOTE:** distinguish between intranet and internet Endpoint. We recommend that if the OSS Bucket and the gateway is in the same Region is use the RDS intranet IP Endpoint:oss-cn-hangzhou-internal.aliyuncs.com.
  /// [ossHealth] The OSS Bucket of type. Valid values: `BucketHealthy`: OSS connectivity. `BucketAccessDenied`: OBJECT STORAGE Service (OSS) access to an exception. `BucketMiscFailure`: OBJECT STORAGE Service (OSS) access to additional exception. `BucketNetworkFailure`: OBJECT STORAGE Service (OSS) access network an exception. `BucketNotExist`: OSS Bucket does not exist. `Nothing returns`: We may not have ever known existed.
  /// [ossUsed] For a cloud-based data is. Unit: `B`.
  /// [outRate] Upload speed. Unit: `B/s`.
  /// [partialSyncPaths] In part mode, the directory path group JSON format.
  /// [pathPrefix] The prefix of the OSS.
  /// [pollingInterval] The reverse synchronization time intervals of the gateway file share. Value range: `15` ~ `36000`. **NOTE:** in copy mode + reverse synchronization is enabled Download file data, value range: `3600` ~ `36000`.
  /// [protocol] Share types. Valid values: `SMB`, `NFS`.
  /// [remainingMetaSpace] You can use the metadata space. Unit: `B`.
  /// [remoteSync] Whether to enable reverse synchronization of the gateway file share. Default value: `false`.
  /// [remoteSyncDownload] Copy mode, whether to download the file data. Default value: `false`. **NOTE:** only when the shared opens the reverse synchronization or acceded to by the speed synchronization group, this parameter will not take effect.
  /// [roClientList] The read-only client list. When Protocol NFS is returned when the status is.
  /// [roUserList] The read-only client list. When Protocol for Server Message Block (SMB) to go back to.
  /// [rwClientList] Read and write the client list. When Protocol NFS is returned when the status is.
  /// [rwUserList] Read-write user list. When Protocol for Server Message Block (SMB) to go back to.
  /// [serverSideCmk] File share is enabled server-side encryption, encryption used by the KMS key.
  /// [serverSideEncryption] If the OSS Bucket side encryption.
  /// [size] The caching capacity. Unit: `B`.
  /// [squash] The set up gateway file share NFS protocol user mapping. Valid values: `none`, `root_squash`, `all_squash`, `all_anonymous`. Default value: `none`.
  /// [state] File synchronization types. Valid values: `clean`, `dirty`. `clean`: synchronization is complete. `dirty`: synchronization has not been completed.
  /// [supportArchive] Whether to support the archive transparent read.
  /// [syncProgress] Full synchronization progress. When the share has been added for a synchronization group, the return parameters are valid, that shared full synchronization progress (0~100). `-2`: indicates that share the Gateway version does not support this feature. `-1`: the share does not occur full synchronization.
  /// [totalDownload] The OSS Bucket to the Gateway total downloads. Unit: `B`.
  /// [totalUpload] The OSS Bucket to the Gateway total Upload amount. Unit: `B`.
  /// [transferAcceleration] The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version &gt;= 1.3.0 above support.
  /// [used] Used cache. Unit: `B`.
  /// [windowsAcl] The set up gateway file share Server Message Block (SMB) protocol, whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.45 above support.
  const GetGatewayFileSharesShare({
    required this.accessBasedEnumeration,
    required this.address,
    required this.backendLimit,
    required this.browsable,
    required this.bucketInfos,
    required this.bucketsStub,
    required this.bypassCacheRead,
    required this.cacheMode,
    required this.clientSideCmk,
    required this.clientSideEncryption,
    required this.directIo,
    required this.diskId,
    required this.diskType,
    required this.downloadLimit,
    required this.enabled,
    required this.expressSyncId,
    required this.fastReclaim,
    required this.feLimit,
    required this.fileNumLimit,
    required this.fsSizeLimit,
    required this.gatewayFileShareName,
    required this.gatewayId,
    required this.id,
    required this.ignoreDelete,
    required this.inPlace,
    required this.inRate,
    required this.indexId,
    required this.kmsRotatePeriod,
    required this.lagPeriod,
    required this.localPath,
    required this.mnsHealth,
    required this.nfsV4Optimization,
    required this.obsoleteBuckets,
    required this.ossBucketName,
    required this.ossBucketSsl,
    required this.ossEndpoint,
    required this.ossHealth,
    required this.ossUsed,
    required this.outRate,
    required this.partialSyncPaths,
    required this.pathPrefix,
    required this.pollingInterval,
    required this.protocol,
    required this.remainingMetaSpace,
    required this.remoteSync,
    required this.remoteSyncDownload,
    required this.roClientList,
    required this.roUserList,
    required this.rwClientList,
    required this.rwUserList,
    required this.serverSideCmk,
    required this.serverSideEncryption,
    required this.size,
    required this.squash,
    required this.state,
    required this.supportArchive,
    required this.syncProgress,
    required this.totalDownload,
    required this.totalUpload,
    required this.transferAcceleration,
    required this.used,
    required this.windowsAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBasedEnumeration': accessBasedEnumeration,
      'address': address,
      'backendLimit': backendLimit,
      'browsable': browsable,
      'bucketInfos': bucketInfos,
      'bucketsStub': bucketsStub,
      'bypassCacheRead': bypassCacheRead,
      'cacheMode': cacheMode,
      'clientSideCmk': clientSideCmk,
      'clientSideEncryption': clientSideEncryption,
      'directIo': directIo,
      'diskId': diskId,
      'diskType': diskType,
      'downloadLimit': downloadLimit,
      'enabled': enabled,
      'expressSyncId': expressSyncId,
      'fastReclaim': fastReclaim,
      'feLimit': feLimit,
      'fileNumLimit': fileNumLimit,
      'fsSizeLimit': fsSizeLimit,
      'gatewayFileShareName': gatewayFileShareName,
      'gatewayId': gatewayId,
      'id': id,
      'ignoreDelete': ignoreDelete,
      'inPlace': inPlace,
      'inRate': inRate,
      'indexId': indexId,
      'kmsRotatePeriod': kmsRotatePeriod,
      'lagPeriod': lagPeriod,
      'localPath': localPath,
      'mnsHealth': mnsHealth,
      'nfsV4Optimization': nfsV4Optimization,
      'obsoleteBuckets': obsoleteBuckets,
      'ossBucketName': ossBucketName,
      'ossBucketSsl': ossBucketSsl,
      'ossEndpoint': ossEndpoint,
      'ossHealth': ossHealth,
      'ossUsed': ossUsed,
      'outRate': outRate,
      'partialSyncPaths': partialSyncPaths,
      'pathPrefix': pathPrefix,
      'pollingInterval': pollingInterval,
      'protocol': protocol,
      'remainingMetaSpace': remainingMetaSpace,
      'remoteSync': remoteSync,
      'remoteSyncDownload': remoteSyncDownload,
      'roClientList': roClientList,
      'roUserList': roUserList,
      'rwClientList': rwClientList,
      'rwUserList': rwUserList,
      'serverSideCmk': serverSideCmk,
      'serverSideEncryption': serverSideEncryption,
      'size': size,
      'squash': squash,
      'state': state,
      'supportArchive': supportArchive,
      'syncProgress': syncProgress,
      'totalDownload': totalDownload,
      'totalUpload': totalUpload,
      'transferAcceleration': transferAcceleration,
      'used': used,
      'windowsAcl': windowsAcl,
    };
  }

  factory GetGatewayFileSharesShare.fromMap(Map<String, dynamic> map) {
    return GetGatewayFileSharesShare(
      accessBasedEnumeration: pulumi.Input.fromValue(map['accessBasedEnumeration'] as bool),
      address: pulumi.Input.fromValue(map['address'] as String),
      backendLimit: pulumi.Input.fromValue(map['backendLimit'] as int),
      browsable: pulumi.Input.fromValue(map['browsable'] as bool),
      bucketInfos: pulumi.Input.fromValue(map['bucketInfos'] as String),
      bucketsStub: pulumi.Input.fromValue(map['bucketsStub'] as bool),
      bypassCacheRead: pulumi.Input.fromValue(map['bypassCacheRead'] as bool),
      cacheMode: pulumi.Input.fromValue(map['cacheMode'] as String),
      clientSideCmk: pulumi.Input.fromValue(map['clientSideCmk'] as String),
      clientSideEncryption: pulumi.Input.fromValue(map['clientSideEncryption'] as bool),
      directIo: pulumi.Input.fromValue(map['directIo'] as bool),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      downloadLimit: pulumi.Input.fromValue(map['downloadLimit'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expressSyncId: pulumi.Input.fromValue(map['expressSyncId'] as String),
      fastReclaim: pulumi.Input.fromValue(map['fastReclaim'] as bool),
      feLimit: pulumi.Input.fromValue(map['feLimit'] as int),
      fileNumLimit: pulumi.Input.fromValue(map['fileNumLimit'] as String),
      fsSizeLimit: pulumi.Input.fromValue(map['fsSizeLimit'] as String),
      gatewayFileShareName: pulumi.Input.fromValue(map['gatewayFileShareName'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ignoreDelete: pulumi.Input.fromValue(map['ignoreDelete'] as bool),
      inPlace: pulumi.Input.fromValue(map['inPlace'] as bool),
      inRate: pulumi.Input.fromValue(map['inRate'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      kmsRotatePeriod: pulumi.Input.fromValue(map['kmsRotatePeriod'] as int),
      lagPeriod: pulumi.Input.fromValue(map['lagPeriod'] as String),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      mnsHealth: pulumi.Input.fromValue(map['mnsHealth'] as String),
      nfsV4Optimization: pulumi.Input.fromValue(map['nfsV4Optimization'] as bool),
      obsoleteBuckets: pulumi.Input.fromValue(map['obsoleteBuckets'] as String),
      ossBucketName: pulumi.Input.fromValue(map['ossBucketName'] as String),
      ossBucketSsl: pulumi.Input.fromValue(map['ossBucketSsl'] as bool),
      ossEndpoint: pulumi.Input.fromValue(map['ossEndpoint'] as String),
      ossHealth: pulumi.Input.fromValue(map['ossHealth'] as String),
      ossUsed: pulumi.Input.fromValue(map['ossUsed'] as String),
      outRate: pulumi.Input.fromValue(map['outRate'] as String),
      partialSyncPaths: pulumi.Input.fromValue(map['partialSyncPaths'] as String),
      pathPrefix: pulumi.Input.fromValue(map['pathPrefix'] as String),
      pollingInterval: pulumi.Input.fromValue(map['pollingInterval'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      remainingMetaSpace: pulumi.Input.fromValue(map['remainingMetaSpace'] as String),
      remoteSync: pulumi.Input.fromValue(map['remoteSync'] as bool),
      remoteSyncDownload: pulumi.Input.fromValue(map['remoteSyncDownload'] as bool),
      roClientList: pulumi.Input.fromValue(map['roClientList'] as String),
      roUserList: pulumi.Input.fromValue(map['roUserList'] as String),
      rwClientList: pulumi.Input.fromValue(map['rwClientList'] as String),
      rwUserList: pulumi.Input.fromValue(map['rwUserList'] as String),
      serverSideCmk: pulumi.Input.fromValue(map['serverSideCmk'] as String),
      serverSideEncryption: pulumi.Input.fromValue(map['serverSideEncryption'] as bool),
      size: pulumi.Input.fromValue(map['size'] as String),
      squash: pulumi.Input.fromValue(map['squash'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      supportArchive: pulumi.Input.fromValue(map['supportArchive'] as bool),
      syncProgress: pulumi.Input.fromValue(map['syncProgress'] as int),
      totalDownload: pulumi.Input.fromValue(map['totalDownload'] as String),
      totalUpload: pulumi.Input.fromValue(map['totalUpload'] as String),
      transferAcceleration: pulumi.Input.fromValue(map['transferAcceleration'] as bool),
      used: pulumi.Input.fromValue(map['used'] as String),
      windowsAcl: pulumi.Input.fromValue(map['windowsAcl'] as bool),
    );
  }
}

