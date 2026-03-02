// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CachesIscsiVolume resources.
class CachesIscsiVolumeState {
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  final pulumi.Input<String>? arn;
  /// Whether mutual CHAP is enabled for the iSCSI target.
  final pulumi.Input<bool>? chapEnabled;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? gatewayArn;
  /// Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  final pulumi.Input<bool>? kmsEncrypted;
  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  final pulumi.Input<String>? kmsKey;
  /// Logical disk number.
  final pulumi.Input<int>? lunNumber;
  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String>? networkInterfaceId;
  /// The port used to communicate with iSCSI targets.
  final pulumi.Input<int>? networkInterfacePort;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;
  /// The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  final pulumi.Input<String>? sourceVolumeArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  final pulumi.Input<String>? targetArn;
  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String>? targetName;
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  final pulumi.Input<String>? volumeArn;
  /// Volume ID, e.g., `vol-12345678`.
  final pulumi.Input<String>? volumeId;
  /// The size of the volume in bytes.
  final pulumi.Input<int>? volumeSizeInBytes;

  /// Creates a new [CachesIscsiVolumeState].
  /// [arn] Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  /// [chapEnabled] Whether mutual CHAP is enabled for the iSCSI target.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [kmsEncrypted] Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  /// [lunNumber] Logical disk number.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [networkInterfacePort] The port used to communicate with iSCSI targets.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  /// [sourceVolumeArn] The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  /// [volumeArn] Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  /// [volumeId] Volume ID, e.g., `vol-12345678`.
  /// [volumeSizeInBytes] The size of the volume in bytes.
  CachesIscsiVolumeState({
    this.arn,
    this.chapEnabled,
    this.gatewayArn,
    this.kmsEncrypted,
    this.kmsKey,
    this.lunNumber,
    this.networkInterfaceId,
    this.networkInterfacePort,
    this.region,
    this.snapshotId,
    this.sourceVolumeArn,
    this.tags,
    this.tagsAll,
    this.targetArn,
    this.targetName,
    this.volumeArn,
    this.volumeId,
    this.volumeSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'chapEnabled': ?chapEnabled,
      'gatewayArn': ?gatewayArn,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKey': ?kmsKey,
      'lunNumber': ?lunNumber,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfacePort': ?networkInterfacePort,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'sourceVolumeArn': ?sourceVolumeArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
      'targetName': ?targetName,
      'volumeArn': ?volumeArn,
      'volumeId': ?volumeId,
      'volumeSizeInBytes': ?volumeSizeInBytes,
    };
  }

  factory CachesIscsiVolumeState.fromMap(Map<String, dynamic> map) {
    return CachesIscsiVolumeState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      chapEnabled: map['chapEnabled'] == null ? null : ((map['chapEnabled'] as bool).input()).input(),
      gatewayArn: map['gatewayArn'] == null ? null : ((map['gatewayArn'] as String).input()).input(),
      kmsEncrypted: map['kmsEncrypted'] == null ? null : ((map['kmsEncrypted'] as bool).input()).input(),
      kmsKey: map['kmsKey'] == null ? null : ((map['kmsKey'] as String).input()).input(),
      lunNumber: map['lunNumber'] == null ? null : ((map['lunNumber'] as int).input()).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : ((map['networkInterfaceId'] as String).input()).input(),
      networkInterfacePort: map['networkInterfacePort'] == null ? null : ((map['networkInterfacePort'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snapshotId: map['snapshotId'] == null ? null : ((map['snapshotId'] as String).input()).input(),
      sourceVolumeArn: map['sourceVolumeArn'] == null ? null : ((map['sourceVolumeArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetArn: map['targetArn'] == null ? null : ((map['targetArn'] as String).input()).input(),
      targetName: map['targetName'] == null ? null : ((map['targetName'] as String).input()).input(),
      volumeArn: map['volumeArn'] == null ? null : ((map['volumeArn'] as String).input()).input(),
      volumeId: map['volumeId'] == null ? null : ((map['volumeId'] as String).input()).input(),
      volumeSizeInBytes: map['volumeSizeInBytes'] == null ? null : ((map['volumeSizeInBytes'] as int).input()).input(),
    );
  }
}

