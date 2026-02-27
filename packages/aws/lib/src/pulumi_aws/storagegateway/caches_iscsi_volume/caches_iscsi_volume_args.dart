// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CachesIscsiVolume.
class CachesIscsiVolumeArgs {
  /// The Amazon Resource Name (ARN) of the gateway.
  final Input<String> gatewayArn;

  /// Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  final Input<bool>? kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  final Input<String>? kmsKey;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  final Input<String>? snapshotId;

  /// The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  final Input<String>? sourceVolumeArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final Input<String> targetName;

  /// The size of the volume in bytes.
  final Input<int> volumeSizeInBytes;

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
    final map = <String, dynamic>{};
    map['gatewayArn'] = gatewayArn;
    final kmsEncryptedValue = kmsEncrypted;
    if (kmsEncryptedValue != null) {
      map['kmsEncrypted'] = kmsEncryptedValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final sourceVolumeArnValue = sourceVolumeArn;
    if (sourceVolumeArnValue != null) {
      map['sourceVolumeArn'] = sourceVolumeArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetName'] = targetName;
    map['volumeSizeInBytes'] = volumeSizeInBytes;
    return map;
  }

  factory CachesIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return CachesIscsiVolumeArgs(
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      kmsEncrypted: Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      networkInterfaceId: Input.asInput<String>(map['networkInterfaceId']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotId: Input.asOptionalInput<String>(map['snapshotId']),
      sourceVolumeArn: Input.asOptionalInput<String>(map['sourceVolumeArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetName: Input.asInput<String>(map['targetName']),
      volumeSizeInBytes: Input.asInput<int>(map['volumeSizeInBytes']),
    );
  }
}
