// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StoredIscsiVolume resources.
class StoredIscsiVolumeState {
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  final pulumi.Input<String>? arn;

  /// Whether mutual CHAP is enabled for the iSCSI target.
  final pulumi.Input<bool>? chapEnabled;

  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  final pulumi.Input<String>? diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? gatewayArn;

  /// `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  final pulumi.Input<bool>? kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  final pulumi.Input<String>? kmsKey;

  /// Logical disk number.
  final pulumi.Input<int>? lunNumber;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String>? networkInterfaceId;

  /// The port used to communicate with iSCSI targets.
  final pulumi.Input<int>? networkInterfacePort;

  /// Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  final pulumi.Input<bool>? preserveExistingData;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  final pulumi.Input<String>? targetArn;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String>? targetName;

  /// A value that indicates whether a storage volume is attached to, detached from, or is in the process of detaching from a gateway.
  final pulumi.Input<String>? volumeAttachmentStatus;

  /// Volume ID, e.g., `vol-12345678`.
  final pulumi.Input<String>? volumeId;

  /// The size of the data stored on the volume in bytes.
  final pulumi.Input<int>? volumeSizeInBytes;

  /// indicates the state of the storage volume.
  final pulumi.Input<String>? volumeStatus;

  /// indicates the type of the volume.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [StoredIscsiVolumeState].
  /// [arn] Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  /// [chapEnabled] Whether mutual CHAP is enabled for the iSCSI target.
  /// [diskId] The unique identifier for the gateway local disk that is configured as a stored volume.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [kmsEncrypted] `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  /// [lunNumber] Logical disk number.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [networkInterfacePort] The port used to communicate with iSCSI targets.
  /// [preserveExistingData] Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  /// [volumeAttachmentStatus] A value that indicates whether a storage volume is attached to, detached from, or is in the process of detaching from a gateway.
  /// [volumeId] Volume ID, e.g., `vol-12345678`.
  /// [volumeSizeInBytes] The size of the data stored on the volume in bytes.
  /// [volumeStatus] indicates the state of the storage volume.
  /// [volumeType] indicates the type of the volume.
  StoredIscsiVolumeState({
    this.arn,
    this.chapEnabled,
    this.diskId,
    this.gatewayArn,
    this.kmsEncrypted,
    this.kmsKey,
    this.lunNumber,
    this.networkInterfaceId,
    this.networkInterfacePort,
    this.preserveExistingData,
    this.region,
    this.snapshotId,
    this.tags,
    this.tagsAll,
    this.targetArn,
    this.targetName,
    this.volumeAttachmentStatus,
    this.volumeId,
    this.volumeSizeInBytes,
    this.volumeStatus,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'chapEnabled': ?chapEnabled,
      'diskId': ?diskId,
      'gatewayArn': ?gatewayArn,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKey': ?kmsKey,
      'lunNumber': ?lunNumber,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfacePort': ?networkInterfacePort,
      'preserveExistingData': ?preserveExistingData,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
      'targetName': ?targetName,
      'volumeAttachmentStatus': ?volumeAttachmentStatus,
      'volumeId': ?volumeId,
      'volumeSizeInBytes': ?volumeSizeInBytes,
      'volumeStatus': ?volumeStatus,
      'volumeType': ?volumeType,
    };
  }

  factory StoredIscsiVolumeState.fromMap(Map<String, dynamic> map) {
    return StoredIscsiVolumeState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chapEnabled: (() {
        final guardedValue = map['chapEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayArn: (() {
        final guardedValue = map['gatewayArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      lunNumber: (() {
        final guardedValue = map['lunNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      networkInterfaceId: (() {
        final guardedValue = map['networkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfacePort: (() {
        final guardedValue = map['networkInterfacePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preserveExistingData: (() {
        final guardedValue = map['preserveExistingData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetArn: (() {
        final guardedValue = map['targetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetName: (() {
        final guardedValue = map['targetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeAttachmentStatus: (() {
        final guardedValue = map['volumeAttachmentStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeId: (() {
        final guardedValue = map['volumeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeSizeInBytes: (() {
        final guardedValue = map['volumeSizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeStatus: (() {
        final guardedValue = map['volumeStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
