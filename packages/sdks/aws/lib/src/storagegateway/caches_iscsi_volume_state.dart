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
  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kmsEncrypted` is set.
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
  /// The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volumeSizeInBytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  final pulumi.Input<String>? sourceVolumeArn;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kmsEncrypted` is set.
  /// [lunNumber] Logical disk number.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [networkInterfacePort] The port used to communicate with iSCSI targets.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  /// [sourceVolumeArn] The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volumeSizeInBytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetArn] Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  /// [volumeArn] Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  /// [volumeId] Volume ID, e.g., `vol-12345678`.
  /// [volumeSizeInBytes] The size of the volume in bytes.
  const CachesIscsiVolumeState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chapEnabled: (() { final guardedValue = map['chapEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayArn: (() { final guardedValue = map['gatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncrypted: (() { final guardedValue = map['kmsEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lunNumber: (() { final guardedValue = map['lunNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfacePort: (() { final guardedValue = map['networkInterfacePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVolumeArn: (() { final guardedValue = map['sourceVolumeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetName: (() { final guardedValue = map['targetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeArn: (() { final guardedValue = map['volumeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInBytes: (() { final guardedValue = map['volumeSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
