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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? chapEnabled,
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? gatewayArn,
    pulumi.Output<bool>? kmsEncrypted,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<int>? lunNumber,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<int>? networkInterfacePort,
    pulumi.Output<bool>? preserveExistingData,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetArn,
    pulumi.Output<String>? targetName,
    pulumi.Output<String>? volumeAttachmentStatus,
    pulumi.Output<String>? volumeId,
    pulumi.Output<int>? volumeSizeInBytes,
    pulumi.Output<String>? volumeStatus,
    pulumi.Output<String>? volumeType,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      chapEnabled = pulumi.Input.asOptionalInput<bool>(chapEnabled),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      gatewayArn = pulumi.Input.asOptionalInput<String>(gatewayArn),
      kmsEncrypted = pulumi.Input.asOptionalInput<bool>(kmsEncrypted),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      lunNumber = pulumi.Input.asOptionalInput<int>(lunNumber),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      networkInterfacePort = pulumi.Input.asOptionalInput<int>(networkInterfacePort),
      preserveExistingData = pulumi.Input.asOptionalInput<bool>(preserveExistingData),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetArn = pulumi.Input.asOptionalInput<String>(targetArn),
      targetName = pulumi.Input.asOptionalInput<String>(targetName),
      volumeAttachmentStatus = pulumi.Input.asOptionalInput<String>(volumeAttachmentStatus),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId),
      volumeSizeInBytes = pulumi.Input.asOptionalInput<int>(volumeSizeInBytes),
      volumeStatus = pulumi.Input.asOptionalInput<String>(volumeStatus),
      volumeType = pulumi.Input.asOptionalInput<String>(volumeType);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      chapEnabled: map['chapEnabled'] == null ? null : pulumi.Output.create<bool>(map['chapEnabled'] as bool),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      gatewayArn: map['gatewayArn'] == null ? null : pulumi.Output.create<String>(map['gatewayArn'] as String),
      kmsEncrypted: map['kmsEncrypted'] == null ? null : pulumi.Output.create<bool>(map['kmsEncrypted'] as bool),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      lunNumber: map['lunNumber'] == null ? null : pulumi.Output.create<int>(map['lunNumber'] as int),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      networkInterfacePort: map['networkInterfacePort'] == null ? null : pulumi.Output.create<int>(map['networkInterfacePort'] as int),
      preserveExistingData: map['preserveExistingData'] == null ? null : pulumi.Output.create<bool>(map['preserveExistingData'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetArn: map['targetArn'] == null ? null : pulumi.Output.create<String>(map['targetArn'] as String),
      targetName: map['targetName'] == null ? null : pulumi.Output.create<String>(map['targetName'] as String),
      volumeAttachmentStatus: map['volumeAttachmentStatus'] == null ? null : pulumi.Output.create<String>(map['volumeAttachmentStatus'] as String),
      volumeId: map['volumeId'] == null ? null : pulumi.Output.create<String>(map['volumeId'] as String),
      volumeSizeInBytes: map['volumeSizeInBytes'] == null ? null : pulumi.Output.create<int>(map['volumeSizeInBytes'] as int),
      volumeStatus: map['volumeStatus'] == null ? null : pulumi.Output.create<String>(map['volumeStatus'] as String),
      volumeType: map['volumeType'] == null ? null : pulumi.Output.create<String>(map['volumeType'] as String),
    );
  }
}

