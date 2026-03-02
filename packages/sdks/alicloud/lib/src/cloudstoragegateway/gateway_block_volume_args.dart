// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_block_volume_gateway_block_volume_args_doc}
/// The set of arguments for GatewayBlockVolume.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_block_volume_gateway_block_volume_args_doc}
class GatewayBlockVolumeArgs {
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
  final pulumi.Input<String> gatewayBlockVolumeName;
  /// The Gateway ID.
  final pulumi.Input<String> gatewayId;
  /// Whether to delete the source data. Default value `true`. **NOTE:** When `is_source_deletion` is `true`, the data in the OSS Bucket on the cloud is also deleted when deleting the block gateway volume. Please operate with caution.
  final pulumi.Input<bool>? isSourceDeletion;
  /// The Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  final pulumi.Input<String>? localPath;
  /// The name of the OSS Bucket.
  final pulumi.Input<String> ossBucketName;
  /// Whether to enable SSL access your OSS Buckets. Default value: `true`.
  final pulumi.Input<bool>? ossBucketSsl;
  /// The endpoint of the OSS Bucket.
  final pulumi.Input<String> ossEndpoint;
  /// The Protocol. Valid values: `iSCSI`.
  final pulumi.Input<String> protocol;
  /// The recovery.
  final pulumi.Input<bool>? recovery;
  /// The Volume size. Valid values: `1` to `262144`. Unit: `Byte`.
  final pulumi.Input<int>? size;

  /// Creates a new [GatewayBlockVolumeArgs].
  /// [cacheMode] The Block volume set mode to cache mode. Valid values: `Cache`, `WriteThrough`.
  /// [chapEnabled] Whether to enable iSCSI access of CHAP authentication, which currently supports both CHAP inbound authentication.  Default value: `false`.
  /// [chapInPassword] The password for inbound authentication when the block volume enables iSCSI access to CHAP authentication. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  /// [chapInUser] The Inbound CHAP user. The `chap_in_user` must be 1 to 32 characters in length, and can contain letters and digits. **NOTE:** When the `chap_enabled` is  `true` is,The `chap_in_password` is valid.
  /// [chunkSize] The Block volume storage allocation unit.  Valid values: `8192`, `16384`, `32768`, `65536`, `131072`. Default value: `32768`. Unit: `Byte`.
  /// [gatewayBlockVolumeName] The Block volume name. The name must be 1 to 32 characters in length, and can contain lower case letters and digits.
  /// [gatewayId] The Gateway ID.
  /// [isSourceDeletion] Whether to delete the source data. Default value `true`. **NOTE:** When `is_source_deletion` is `true`, the data in the OSS Bucket on the cloud is also deleted when deleting the block gateway volume. Please operate with caution.
  /// [localPath] The Cache disk to local path. **NOTE:**  When the `cache_mode` is  `Cache` is,The `chap_in_password` is valid.
  /// [ossBucketName] The name of the OSS Bucket.
  /// [ossBucketSsl] Whether to enable SSL access your OSS Buckets. Default value: `true`.
  /// [ossEndpoint] The endpoint of the OSS Bucket.
  /// [protocol] The Protocol. Valid values: `iSCSI`.
  /// [recovery] The recovery.
  /// [size] The Volume size. Valid values: `1` to `262144`. Unit: `Byte`.
  GatewayBlockVolumeArgs({
    this.cacheMode,
    this.chapEnabled,
    this.chapInPassword,
    this.chapInUser,
    this.chunkSize,
    required this.gatewayBlockVolumeName,
    required this.gatewayId,
    this.isSourceDeletion,
    this.localPath,
    required this.ossBucketName,
    this.ossBucketSsl,
    required this.ossEndpoint,
    required this.protocol,
    this.recovery,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheMode': ?cacheMode,
      'chapEnabled': ?chapEnabled,
      'chapInPassword': ?chapInPassword,
      'chapInUser': ?chapInUser,
      'chunkSize': ?chunkSize,
      'gatewayBlockVolumeName': gatewayBlockVolumeName,
      'gatewayId': gatewayId,
      'isSourceDeletion': ?isSourceDeletion,
      'localPath': ?localPath,
      'ossBucketName': ossBucketName,
      'ossBucketSsl': ?ossBucketSsl,
      'ossEndpoint': ossEndpoint,
      'protocol': protocol,
      'recovery': ?recovery,
      'size': ?size,
    };
  }

  factory GatewayBlockVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GatewayBlockVolumeArgs(
      cacheMode: map['cacheMode'] == null ? null : (map['cacheMode'] as String).input(),
      chapEnabled: map['chapEnabled'] == null ? null : (map['chapEnabled'] as bool).input(),
      chapInPassword: map['chapInPassword'] == null ? null : (map['chapInPassword'] as String).input(),
      chapInUser: map['chapInUser'] == null ? null : (map['chapInUser'] as String).input(),
      chunkSize: map['chunkSize'] == null ? null : (map['chunkSize'] as int).input(),
      gatewayBlockVolumeName: (map['gatewayBlockVolumeName'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      isSourceDeletion: map['isSourceDeletion'] == null ? null : (map['isSourceDeletion'] as bool).input(),
      localPath: map['localPath'] == null ? null : (map['localPath'] as String).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      ossBucketSsl: map['ossBucketSsl'] == null ? null : (map['ossBucketSsl'] as bool).input(),
      ossEndpoint: (map['ossEndpoint'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      recovery: map['recovery'] == null ? null : (map['recovery'] as bool).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

