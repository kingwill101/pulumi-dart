// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayBlockVolumesVolume {
  /// The IP ADDRESS.
  final String address;
  /// The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  final String cacheMode;
  /// Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  final bool chapEnabled;
  /// The Inbound CHAP user.**NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  final String chapInUser;
  /// The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  final int chunkSize;
  /// The cache disk ID.
  final String diskId;
  /// The cache disk type.
  final String diskType;
  /// Whether to enable Volume.
  final bool enabled;
  /// The Block volume name.  The name must be 1 to 32 characters in length, and can contain lowercase letters, numbers.
  final String gatewayBlockVolumeName;
  /// The Gateway ID.
  final String gatewayId;
  /// The ID of the Gateway Block Volume. The value formats as `<gateway_id>:<index_id>`.
  final String id;
  /// The ID of the index.
  final String indexId;
  /// CThe Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  final String localPath;
  /// The Lun identifier.
  final int lunId;
  /// The name of the OSS Bucket.
  final String ossBucketName;
  /// Whether to enable SSL access your OSS Buckets. Default value: `true`.
  final bool ossBucketSsl;
  /// The endpoint of the OSS Bucket.
  final String ossEndpoint;
  /// The Port.
  final int port;
  /// The Protocol.
  final String protocol;
  /// The Volume size.
  final int size;
  /// The Buffer status.
  final String state;
  /// The status of volume.
  final int status;
  /// The target.
  final String target;
  /// The total amount of downloaded data. Unit: `B`.
  final int totalDownload;
  /// The total amount of uploaded data. Unit: `B`.
  final int totalUpload;
  final int volumeState;

  /// Creates a new [GetGatewayBlockVolumesVolume].
  /// [address] The IP ADDRESS.
  /// [cacheMode] The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  /// [chapEnabled] Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  /// [chapInUser] The Inbound CHAP user.**NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  /// [chunkSize] The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  /// [diskId] The cache disk ID.
  /// [diskType] The cache disk type.
  /// [enabled] Whether to enable Volume.
  /// [gatewayBlockVolumeName] The Block volume name.  The name must be 1 to 32 characters in length, and can contain lowercase letters, numbers.
  /// [gatewayId] The Gateway ID.
  /// [id] The ID of the Gateway Block Volume. The value formats as `<gateway_id>:<index_id>`.
  /// [indexId] The ID of the index.
  /// [localPath] CThe Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  /// [lunId] The Lun identifier.
  /// [ossBucketName] The name of the OSS Bucket.
  /// [ossBucketSsl] Whether to enable SSL access your OSS Buckets. Default value: `true`.
  /// [ossEndpoint] The endpoint of the OSS Bucket.
  /// [port] The Port.
  /// [protocol] The Protocol.
  /// [size] The Volume size.
  /// [state] The Buffer status.
  /// [status] The status of volume.
  /// [target] The target.
  /// [totalDownload] The total amount of downloaded data. Unit: `B`.
  /// [totalUpload] The total amount of uploaded data. Unit: `B`.
  /// [volumeState] Required.
  GetGatewayBlockVolumesVolume({
    required this.address,
    required this.cacheMode,
    required this.chapEnabled,
    required this.chapInUser,
    required this.chunkSize,
    required this.diskId,
    required this.diskType,
    required this.enabled,
    required this.gatewayBlockVolumeName,
    required this.gatewayId,
    required this.id,
    required this.indexId,
    required this.localPath,
    required this.lunId,
    required this.ossBucketName,
    required this.ossBucketSsl,
    required this.ossEndpoint,
    required this.port,
    required this.protocol,
    required this.size,
    required this.state,
    required this.status,
    required this.target,
    required this.totalDownload,
    required this.totalUpload,
    required this.volumeState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'cacheMode': cacheMode,
      'chapEnabled': chapEnabled,
      'chapInUser': chapInUser,
      'chunkSize': chunkSize,
      'diskId': diskId,
      'diskType': diskType,
      'enabled': enabled,
      'gatewayBlockVolumeName': gatewayBlockVolumeName,
      'gatewayId': gatewayId,
      'id': id,
      'indexId': indexId,
      'localPath': localPath,
      'lunId': lunId,
      'ossBucketName': ossBucketName,
      'ossBucketSsl': ossBucketSsl,
      'ossEndpoint': ossEndpoint,
      'port': port,
      'protocol': protocol,
      'size': size,
      'state': state,
      'status': status,
      'target': target,
      'totalDownload': totalDownload,
      'totalUpload': totalUpload,
      'volumeState': volumeState,
    };
  }

  factory GetGatewayBlockVolumesVolume.fromMap(Map<String, dynamic> map) {
    return GetGatewayBlockVolumesVolume(
      address: map['address'] as String,
      cacheMode: map['cacheMode'] as String,
      chapEnabled: map['chapEnabled'] as bool,
      chapInUser: map['chapInUser'] as String,
      chunkSize: map['chunkSize'] as int,
      diskId: map['diskId'] as String,
      diskType: map['diskType'] as String,
      enabled: map['enabled'] as bool,
      gatewayBlockVolumeName: map['gatewayBlockVolumeName'] as String,
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      indexId: map['indexId'] as String,
      localPath: map['localPath'] as String,
      lunId: map['lunId'] as int,
      ossBucketName: map['ossBucketName'] as String,
      ossBucketSsl: map['ossBucketSsl'] as bool,
      ossEndpoint: map['ossEndpoint'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      size: map['size'] as int,
      state: map['state'] as String,
      status: map['status'] as int,
      target: map['target'] as String,
      totalDownload: map['totalDownload'] as int,
      totalUpload: map['totalUpload'] as int,
      volumeState: map['volumeState'] as int,
    );
  }
}

