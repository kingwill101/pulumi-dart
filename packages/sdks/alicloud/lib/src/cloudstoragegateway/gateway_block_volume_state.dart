// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayBlockVolume resources.
class GatewayBlockVolumeState {
  /// The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  final pulumi.Input<String>? cacheMode;
  /// Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  final pulumi.Input<bool>? chapEnabled;
  /// The password for inbound authentication when the block volume enables iSCSI access to CHAP authentication. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  final pulumi.Input<String>? chapInPassword;
  /// The Inbound CHAP user. The `chap_in_user` must be 1 to 32 characters in length, and can contain letters and digits. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  final pulumi.Input<String>? chapInUser;
  /// The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  final pulumi.Input<int>? chunkSize;
  /// The Block volume name. The name must be 1 to 32 characters in length, and can contain lower case letters and digits.
  final pulumi.Input<String>? gatewayBlockVolumeName;
  /// The Gateway ID.
  final pulumi.Input<String>? gatewayId;
  /// The ID of the index.
  final pulumi.Input<String>? indexId;
  /// Whether to delete the source data. Default value `true`. **NOTE:** When `is_source_deletion` is `true`, the data in the OSS Bucket on the cloud is also deleted when deleting the block gateway volume. Please operate with caution.
  final pulumi.Input<bool>? isSourceDeletion;
  /// The Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  final pulumi.Input<String>? localPath;
  /// The name of the OSS Bucket.
  final pulumi.Input<String>? ossBucketName;
  /// Whether to enable SSL access your OSS Buckets. Default value: `true`.
  final pulumi.Input<bool>? ossBucketSsl;
  /// The endpoint of the OSS Bucket.
  final pulumi.Input<String>? ossEndpoint;
  /// The Protocol. Valid values: `iSCSI`.
  final pulumi.Input<String>? protocol;
  /// The recovery.
  final pulumi.Input<bool>? recovery;
  /// The Volume size. Valid values: `1` to `262144`. Unit: `Byte`.
  final pulumi.Input<int>? size;
  /// The status of volume. Valid values:
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayBlockVolumeState].
  /// [cacheMode] The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  /// [chapEnabled] Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  /// [chapInPassword] The password for inbound authentication when the block volume enables iSCSI access to CHAP authentication. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  /// [chapInUser] The Inbound CHAP user. The `chap_in_user` must be 1 to 32 characters in length, and can contain letters and digits. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  /// [chunkSize] The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  /// [gatewayBlockVolumeName] The Block volume name. The name must be 1 to 32 characters in length, and can contain lower case letters and digits.
  /// [gatewayId] The Gateway ID.
  /// [indexId] The ID of the index.
  /// [isSourceDeletion] Whether to delete the source data. Default value `true`. **NOTE:** When `is_source_deletion` is `true`, the data in the OSS Bucket on the cloud is also deleted when deleting the block gateway volume. Please operate with caution.
  /// [localPath] The Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  /// [ossBucketName] The name of the OSS Bucket.
  /// [ossBucketSsl] Whether to enable SSL access your OSS Buckets. Default value: `true`.
  /// [ossEndpoint] The endpoint of the OSS Bucket.
  /// [protocol] The Protocol. Valid values: `iSCSI`.
  /// [recovery] The recovery.
  /// [size] The Volume size. Valid values: `1` to `262144`. Unit: `Byte`.
  /// [status] The status of volume. Valid values:
  GatewayBlockVolumeState({
    pulumi.Output<String>? cacheMode,
    pulumi.Output<bool>? chapEnabled,
    pulumi.Output<String>? chapInPassword,
    pulumi.Output<String>? chapInUser,
    pulumi.Output<int>? chunkSize,
    pulumi.Output<String>? gatewayBlockVolumeName,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? indexId,
    pulumi.Output<bool>? isSourceDeletion,
    pulumi.Output<String>? localPath,
    pulumi.Output<String>? ossBucketName,
    pulumi.Output<bool>? ossBucketSsl,
    pulumi.Output<String>? ossEndpoint,
    pulumi.Output<String>? protocol,
    pulumi.Output<bool>? recovery,
    pulumi.Output<int>? size,
    pulumi.Output<String>? status,
  }) :
      cacheMode = pulumi.Input.asOptionalInput<String>(cacheMode),
      chapEnabled = pulumi.Input.asOptionalInput<bool>(chapEnabled),
      chapInPassword = pulumi.Input.asOptionalInput<String>(chapInPassword),
      chapInUser = pulumi.Input.asOptionalInput<String>(chapInUser),
      chunkSize = pulumi.Input.asOptionalInput<int>(chunkSize),
      gatewayBlockVolumeName = pulumi.Input.asOptionalInput<String>(gatewayBlockVolumeName),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      isSourceDeletion = pulumi.Input.asOptionalInput<bool>(isSourceDeletion),
      localPath = pulumi.Input.asOptionalInput<String>(localPath),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      ossBucketSsl = pulumi.Input.asOptionalInput<bool>(ossBucketSsl),
      ossEndpoint = pulumi.Input.asOptionalInput<String>(ossEndpoint),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      recovery = pulumi.Input.asOptionalInput<bool>(recovery),
      size = pulumi.Input.asOptionalInput<int>(size),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheMode': ?cacheMode,
      'chapEnabled': ?chapEnabled,
      'chapInPassword': ?chapInPassword,
      'chapInUser': ?chapInUser,
      'chunkSize': ?chunkSize,
      'gatewayBlockVolumeName': ?gatewayBlockVolumeName,
      'gatewayId': ?gatewayId,
      'indexId': ?indexId,
      'isSourceDeletion': ?isSourceDeletion,
      'localPath': ?localPath,
      'ossBucketName': ?ossBucketName,
      'ossBucketSsl': ?ossBucketSsl,
      'ossEndpoint': ?ossEndpoint,
      'protocol': ?protocol,
      'recovery': ?recovery,
      'size': ?size,
      'status': ?status,
    };
  }

  factory GatewayBlockVolumeState.fromMap(Map<String, dynamic> map) {
    return GatewayBlockVolumeState(
      cacheMode: map['cacheMode'] == null ? null : pulumi.Output.create<String>(map['cacheMode'] as String),
      chapEnabled: map['chapEnabled'] == null ? null : pulumi.Output.create<bool>(map['chapEnabled'] as bool),
      chapInPassword: map['chapInPassword'] == null ? null : pulumi.Output.create<String>(map['chapInPassword'] as String),
      chapInUser: map['chapInUser'] == null ? null : pulumi.Output.create<String>(map['chapInUser'] as String),
      chunkSize: map['chunkSize'] == null ? null : pulumi.Output.create<int>(map['chunkSize'] as int),
      gatewayBlockVolumeName: map['gatewayBlockVolumeName'] == null ? null : pulumi.Output.create<String>(map['gatewayBlockVolumeName'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      isSourceDeletion: map['isSourceDeletion'] == null ? null : pulumi.Output.create<bool>(map['isSourceDeletion'] as bool),
      localPath: map['localPath'] == null ? null : pulumi.Output.create<String>(map['localPath'] as String),
      ossBucketName: map['ossBucketName'] == null ? null : pulumi.Output.create<String>(map['ossBucketName'] as String),
      ossBucketSsl: map['ossBucketSsl'] == null ? null : pulumi.Output.create<bool>(map['ossBucketSsl'] as bool),
      ossEndpoint: map['ossEndpoint'] == null ? null : pulumi.Output.create<String>(map['ossEndpoint'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      recovery: map['recovery'] == null ? null : pulumi.Output.create<bool>(map['recovery'] as bool),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

