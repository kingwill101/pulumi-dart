// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_stored_iscsi_volume_stored_iscsi_volume_args_doc}
/// The set of arguments for StoredIscsiVolume.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_stored_iscsi_volume_stored_iscsi_volume_args_doc}
class StoredIscsiVolumeArgs {
  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  final pulumi.Input<String> diskId;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  final pulumi.Input<bool>? kmsEncrypted;
  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kmsEncrypted` is `true`.
  final pulumi.Input<String>? kmsKey;
  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String> networkInterfaceId;
  /// Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  final pulumi.Input<bool> preserveExistingData;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;
  /// Key-value mapping of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String> targetName;

  /// Creates a new [StoredIscsiVolumeArgs].
  /// [diskId] The unique identifier for the gateway local disk that is configured as a stored volume.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [kmsEncrypted] `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kmsEncrypted` is `true`.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [preserveExistingData] Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  const StoredIscsiVolumeArgs({
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
    return <String, dynamic>{
      'diskId': diskId,
      'gatewayArn': gatewayArn,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKey': ?kmsKey,
      'networkInterfaceId': networkInterfaceId,
      'preserveExistingData': preserveExistingData,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'targetName': targetName,
    };
  }

  factory StoredIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return StoredIscsiVolumeArgs(
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      kmsEncrypted: (() { final guardedValue = map['kmsEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      preserveExistingData: pulumi.Input.fromValue(map['preserveExistingData'] as bool),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
    );
  }
}
