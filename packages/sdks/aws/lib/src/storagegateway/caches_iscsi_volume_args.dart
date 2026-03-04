// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_caches_iscsi_volume_caches_iscsi_volume_args_doc}
/// The set of arguments for CachesIscsiVolume.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_caches_iscsi_volume_caches_iscsi_volume_args_doc}
class CachesIscsiVolumeArgs {
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  final pulumi.Input<bool>? kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  final pulumi.Input<String>? kmsKey;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;

  /// The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  final pulumi.Input<String>? sourceVolumeArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String> targetName;

  /// The size of the volume in bytes.
  final pulumi.Input<int> volumeSizeInBytes;

  /// Creates a new [CachesIscsiVolumeArgs].
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [kmsEncrypted] Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  /// [sourceVolumeArn] The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  /// [volumeSizeInBytes] The size of the volume in bytes.
  CachesIscsiVolumeArgs({
    required this.gatewayArn,
    this.kmsEncrypted,
    this.kmsKey,
    required this.networkInterfaceId,
    this.region,
    this.snapshotId,
    this.sourceVolumeArn,
    this.tags,
    required this.targetName,
    required this.volumeSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayArn': gatewayArn,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKey': ?kmsKey,
      'networkInterfaceId': networkInterfaceId,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'sourceVolumeArn': ?sourceVolumeArn,
      'tags': ?tags,
      'targetName': targetName,
      'volumeSizeInBytes': volumeSizeInBytes,
    };
  }

  factory CachesIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return CachesIscsiVolumeArgs(
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      kmsEncrypted: (() {
        final guardedValue = map['kmsEncrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceVolumeArn: (() {
        final guardedValue = map['sourceVolumeArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
      volumeSizeInBytes: pulumi.Input.fromValue(
        map['volumeSizeInBytes'] as int,
      ),
    );
  }
}
