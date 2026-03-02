// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayBlockVolumesVolume {
  /// The IP ADDRESS.
  final pulumi.Input<String> address;
  /// The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  final pulumi.Input<String> cacheMode;
  /// Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  final pulumi.Input<bool> chapEnabled;
  /// The Inbound CHAP user.**NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  final pulumi.Input<String> chapInUser;
  /// The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  final pulumi.Input<int> chunkSize;
  /// The cache disk ID.
  final pulumi.Input<String> diskId;
  /// The cache disk type.
  final pulumi.Input<String> diskType;
  /// Whether to enable Volume.
  final pulumi.Input<bool> enabled;
  /// The Block volume name.  The name must be 1 to 32 characters in length, and can contain lowercase letters, numbers.
  final pulumi.Input<String> gatewayBlockVolumeName;
  /// The Gateway ID.
  final pulumi.Input<String> gatewayId;
  /// The ID of the Gateway Block Volume. The value formats as `<gateway_id>:<index_id>`.
  final pulumi.Input<String> id;
  /// The ID of the index.
  final pulumi.Input<String> indexId;
  /// CThe Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  final pulumi.Input<String> localPath;
  /// The Lun identifier.
  final pulumi.Input<int> lunId;
  /// The name of the OSS Bucket.
  final pulumi.Input<String> ossBucketName;
  /// Whether to enable SSL access your OSS Buckets. Default value: `true`.
  final pulumi.Input<bool> ossBucketSsl;
  /// The endpoint of the OSS Bucket.
  final pulumi.Input<String> ossEndpoint;
  /// The Port.
  final pulumi.Input<int> port;
  /// The Protocol.
  final pulumi.Input<String> protocol;
  /// The Volume size.
  final pulumi.Input<int> size;
  /// The Buffer status.
  final pulumi.Input<String> state;
  /// The status of volume.
  final pulumi.Input<int> status;
  /// The target.
  final pulumi.Input<String> target;
  /// The total amount of downloaded data. Unit: `B`.
  final pulumi.Input<int> totalDownload;
  /// The total amount of uploaded data. Unit: `B`.
  final pulumi.Input<int> totalUpload;
  final pulumi.Input<int> volumeState;

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
      address: (map['address'] as String).input(),
      cacheMode: (map['cacheMode'] as String).input(),
      chapEnabled: (map['chapEnabled'] as bool).input(),
      chapInUser: (map['chapInUser'] as String).input(),
      chunkSize: (map['chunkSize'] as int).input(),
      diskId: (map['diskId'] as String).input(),
      diskType: (map['diskType'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      gatewayBlockVolumeName: (map['gatewayBlockVolumeName'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      id: (map['id'] as String).input(),
      indexId: (map['indexId'] as String).input(),
      localPath: (map['localPath'] as String).input(),
      lunId: (map['lunId'] as int).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      ossBucketSsl: (map['ossBucketSsl'] as bool).input(),
      ossEndpoint: (map['ossEndpoint'] as String).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      size: (map['size'] as int).input(),
      state: (map['state'] as String).input(),
      status: (map['status'] as int).input(),
      target: (map['target'] as String).input(),
      totalDownload: (map['totalDownload'] as int).input(),
      totalUpload: (map['totalUpload'] as int).input(),
      volumeState: (map['volumeState'] as int).input(),
    );
  }
}

