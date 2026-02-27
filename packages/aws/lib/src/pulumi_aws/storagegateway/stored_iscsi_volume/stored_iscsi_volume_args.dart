// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for StoredIscsiVolume.
class StoredIscsiVolumeArgs {
  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  final pulumi.Input<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  final pulumi.Input<bool>? kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  final pulumi.Input<String>? kmsKey;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String> networkInterfaceId;

  /// Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  final pulumi.Input<bool> preserveExistingData;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String> targetName;

  StoredIscsiVolumeArgs({
    required this.diskId,
    required this.gatewayArn,
    this.kmsEncrypted,
    this.kmsKey,
    required this.networkInterfaceId,
    required this.preserveExistingData,
    this.region,
    this.snapshotId,
    this.tags,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskId'] = diskId;
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
    map['preserveExistingData'] = preserveExistingData;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetName'] = targetName;
    return map;
  }

  factory StoredIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return StoredIscsiVolumeArgs(
      diskId: pulumi.Input.asInput<String>(map['diskId']),
      gatewayArn: pulumi.Input.asInput<String>(map['gatewayArn']),
      kmsEncrypted: pulumi.Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      networkInterfaceId:
          pulumi.Input.asInput<String>(map['networkInterfaceId']),
      preserveExistingData:
          pulumi.Input.asInput<bool>(map['preserveExistingData']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotId: pulumi.Input.asOptionalInput<String>(map['snapshotId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetName: pulumi.Input.asInput<String>(map['targetName']),
    );
  }
}
