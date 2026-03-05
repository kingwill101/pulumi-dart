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
  /// The ID of the Gateway Block Volume. The value formats as `&lt;gateway_id&gt;:&lt;index_id&gt;`.
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
  /// [id] The ID of the Gateway Block Volume. The value formats as `&lt;gateway_id&gt;:&lt;index_id&gt;`.
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
      address: pulumi.Input.fromValue(map['address'] as String),
      cacheMode: pulumi.Input.fromValue(map['cacheMode'] as String),
      chapEnabled: pulumi.Input.fromValue(map['chapEnabled'] as bool),
      chapInUser: pulumi.Input.fromValue(map['chapInUser'] as String),
      chunkSize: pulumi.Input.fromValue(map['chunkSize'] as int),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      gatewayBlockVolumeName: pulumi.Input.fromValue(map['gatewayBlockVolumeName'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      lunId: pulumi.Input.fromValue(map['lunId'] as int),
      ossBucketName: pulumi.Input.fromValue(map['ossBucketName'] as String),
      ossBucketSsl: pulumi.Input.fromValue(map['ossBucketSsl'] as bool),
      ossEndpoint: pulumi.Input.fromValue(map['ossEndpoint'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
      target: pulumi.Input.fromValue(map['target'] as String),
      totalDownload: pulumi.Input.fromValue(map['totalDownload'] as int),
      totalUpload: pulumi.Input.fromValue(map['totalUpload'] as int),
      volumeState: pulumi.Input.fromValue(map['volumeState'] as int),
    );
  }
}

