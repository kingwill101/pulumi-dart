// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayFileShare resources.
class GatewayFileShareState {
  /// Whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version &gt;= 1.0.45 above support.
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

  /// The maximum download speed of the gateway file share. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version &gt;= 1.3.0 above support.
  final pulumi.Input<int>? downloadLimit;

  /// The whether to enable Upload optimization of the gateway file share, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.39 above support.
  final pulumi.Input<bool>? fastReclaim;

  /// The maximum write speed of the gateway file share. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  final pulumi.Input<int>? feLimit;

  /// The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  final pulumi.Input<String>? gatewayFileShareName;

  /// The ID of the gateway.
  final pulumi.Input<String>? gatewayId;

  /// The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version &gt;= 1.0.40 above support.
  final pulumi.Input<bool>? ignoreDelete;

  /// The whether debris optimization of the gateway file share. Default value: `false`.
  final pulumi.Input<bool>? inPlace;

  /// The ID of the file share.
  final pulumi.Input<String>? indexId;

  /// The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  final pulumi.Input<int>? lagPeriod;

  /// The cache disk inside the device name.
  final pulumi.Input<String>? localPath;

  /// The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version &gt;= 1.2.0 above support.
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

  /// The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version &gt;= 1.3.0 above support.
  final pulumi.Input<bool>? transferAcceleration;

  /// Whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version &gt;= 1.0.45 above support.
  final pulumi.Input<bool>? windowsAcl;

  /// Creates a new [GatewayFileShareState].
  /// [accessBasedEnumeration] Whether to enable Windows ABE, the prime minister, need windowsAcl parameter is set to true in the entry into force of. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version &gt;= 1.0.45 above support.
  /// [backendLimit] The Max upload speed of the gateway file share. Unit: `MB/s`, 0 means unlimited. Value range: `0` ~ `1280`. Default value: `0`. **NOTE:** at the same time if you have to limit the maximum write speed, maximum upload speed is no less than the maximum write speed.
  /// [browsable] The whether browsable of the gateway file share (that is, in the network neighborhood of whether you can find). The attribute is valid when the attribute `protocol` is `SMB`. Default value: `true`.
  /// [bypassCacheRead] Direct reading OSS of the gateway file share.
  /// [cacheMode] The set up gateway file share cache mode. Valid values: `Cache` or `Sync`. `Cache`: cached mode. `Sync`: replication mode are available. Default value: `Cache`.
  /// [directIo] File sharing Whether to enable DirectIO (direct I/O mode for data transmission). Default value: `false`.
  /// [downloadLimit] The maximum download speed of the gateway file share. Unit: `MB/s`. `0` means unlimited. Value range: `0` ~ `1280`. **NOTE:** only in copy mode and enable download file data can be set. only when the shared opens the reverse synchronization or acceded to by the speed synchronization Group when, this parameter will not take effect. Gateway version &gt;= 1.3.0 above support.
  /// [fastReclaim] The whether to enable Upload optimization of the gateway file share, which is suitable for data pure backup migration scenarios. Default value: `false`. **NOTE:** Gateway version &gt;= 1.0.39 above support.
  /// [feLimit] The maximum write speed of the gateway file share. Unit: `MB/s`, `0` means unlimited. Value range: `0` ~ `1280`. Default value: `0`.
  /// [gatewayFileShareName] The name of the file share. Length from `1` to `255` characters can contain lowercase letters, digits, (.), (_) Or (-), at the same time, must start with a lowercase letter.
  /// [gatewayId] The ID of the gateway.
  /// [ignoreDelete] The whether to ignore deleted of the gateway file share. After the opening of the Gateway side delete file or delete cloud (OSS) corresponding to the file. Default value: `false`. **NOTE:** `ignore_delete` and `remote_sync` cannot be enabled simultaneously. Gateway version &gt;= 1.0.40 above support.
  /// [inPlace] The whether debris optimization of the gateway file share. Default value: `false`.
  /// [indexId] The ID of the file share.
  /// [lagPeriod] The synchronization delay, I.e. gateway local cache sync to Alibaba Cloud Object Storage Service (oss) of the delay time. Unit: `Seconds`. Value range: `5` ~ `120`. Default value: `5`. **NOTE:** Gateway version &gt;= 1.0.40 above support.
  /// [localPath] The cache disk inside the device name.
  /// [nfsV4Optimization] The set up gateway file share NFS protocol, whether to enable NFS v4 optimization improve Mount Upload efficiency. Default value: `false`. **NOTE:** If it is enabled, NFS V3 cannot be mounted. The attribute is valid when the attribute `protocol` is `NFS`. Gateway version &gt;= 1.2.0 above support.
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
  /// [transferAcceleration] The set up gateway file share whether to enable transmission acceleration needs corresponding OSS Bucket enabled transport acceleration. **NOTE:** Gateway version &gt;= 1.3.0 above support.
  /// [windowsAcl] Whether to enable by Windows access list (requires AD domain) the permissions control. Default value: `false`. **NOTE:** The attribute is valid when the attribute `protocol` is `SMB`. Gateway version &gt;= 1.0.45 above support.
  GatewayFileShareState({
    this.accessBasedEnumeration,
    this.backendLimit,
    this.browsable,
    this.bypassCacheRead,
    this.cacheMode,
    this.directIo,
    this.downloadLimit,
    this.fastReclaim,
    this.feLimit,
    this.gatewayFileShareName,
    this.gatewayId,
    this.ignoreDelete,
    this.inPlace,
    this.indexId,
    this.lagPeriod,
    this.localPath,
    this.nfsV4Optimization,
    this.ossBucketName,
    this.ossBucketSsl,
    this.ossEndpoint,
    this.partialSyncPaths,
    this.pathPrefix,
    this.pollingInterval,
    this.protocol,
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
      accessBasedEnumeration: (() {
        final guardedValue = map['accessBasedEnumeration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backendLimit: (() {
        final guardedValue = map['backendLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      browsable: (() {
        final guardedValue = map['browsable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bypassCacheRead: (() {
        final guardedValue = map['bypassCacheRead'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cacheMode: (() {
        final guardedValue = map['cacheMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      directIo: (() {
        final guardedValue = map['directIo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      downloadLimit: (() {
        final guardedValue = map['downloadLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fastReclaim: (() {
        final guardedValue = map['fastReclaim'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      feLimit: (() {
        final guardedValue = map['feLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      gatewayFileShareName: (() {
        final guardedValue = map['gatewayFileShareName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayId: (() {
        final guardedValue = map['gatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ignoreDelete: (() {
        final guardedValue = map['ignoreDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inPlace: (() {
        final guardedValue = map['inPlace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      indexId: (() {
        final guardedValue = map['indexId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lagPeriod: (() {
        final guardedValue = map['lagPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      localPath: (() {
        final guardedValue = map['localPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfsV4Optimization: (() {
        final guardedValue = map['nfsV4Optimization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ossBucketName: (() {
        final guardedValue = map['ossBucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ossBucketSsl: (() {
        final guardedValue = map['ossBucketSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ossEndpoint: (() {
        final guardedValue = map['ossEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partialSyncPaths: (() {
        final guardedValue = map['partialSyncPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pathPrefix: (() {
        final guardedValue = map['pathPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pollingInterval: (() {
        final guardedValue = map['pollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteSync: (() {
        final guardedValue = map['remoteSync'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      remoteSyncDownload: (() {
        final guardedValue = map['remoteSyncDownload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      roClientList: (() {
        final guardedValue = map['roClientList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roUserList: (() {
        final guardedValue = map['roUserList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rwClientList: (() {
        final guardedValue = map['rwClientList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rwUserList: (() {
        final guardedValue = map['rwUserList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      squash: (() {
        final guardedValue = map['squash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportArchive: (() {
        final guardedValue = map['supportArchive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      transferAcceleration: (() {
        final guardedValue = map['transferAcceleration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      windowsAcl: (() {
        final guardedValue = map['windowsAcl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
