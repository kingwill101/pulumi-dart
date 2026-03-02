// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_state_enum_value.dart';
import 'ssetype_enum_value.dart';
import 'storage_tier_enum_value.dart';
import 'tag.dart';

/// Definition of awsEc2Snapshot
class AwsEc2SnapshotProperties {
  /// <p>The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  final pulumi.Input<String>? dataEncryptionKeyId;
  /// <p>The description for the snapshot.</p>
  final pulumi.Input<String>? description;
  /// <p>Indicates whether the snapshot is encrypted.</p>
  final pulumi.Input<bool>? encrypted;
  /// <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.</p>
  final pulumi.Input<String>? kmsKeyId;
  /// <p>The ARN of the Outpost on which the snapshot is stored. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html'>Amazon EBS local snapshots on Outposts</a> in the <i>Amazon EBS User Guide</i>.</p>
  final pulumi.Input<String>? outpostArn;
  /// <p>The Amazon Web Services owner alias, from an Amazon-maintained list (<code>amazon</code>). This is not the user-configured Amazon Web Services account alias set using the IAM console.</p>
  final pulumi.Input<String>? ownerAlias;
  /// <p>The ID of the Amazon Web Services account that owns the EBS snapshot.</p>
  final pulumi.Input<String>? ownerId;
  /// <p>The progress of the snapshot, as a percentage.</p>
  final pulumi.Input<String>? progress;
  /// <p>Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.</p>
  final pulumi.Input<String>? restoreExpiryTime;
  /// <p>The ID of the snapshot. Each snapshot receives a unique identifier when it is created.</p>
  final pulumi.Input<String>? snapshotId;
  /// <p>Reserved for future use.</p>
  final pulumi.Input<SSETypeEnumValue>? sseType;
  /// <p>The time stamp when the snapshot was initiated.</p>
  final pulumi.Input<String>? startTime;
  /// <p>The snapshot state.</p>
  final pulumi.Input<SnapshotStateEnumValue>? state;
  /// <p>Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  final pulumi.Input<String>? stateMessage;
  /// <p>The storage tier in which the snapshot is stored. <code>standard</code> indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. <code>archive</code> indicates that the snapshot is currently archived and that it must be restored before it can be used.</p>
  final pulumi.Input<StorageTierEnumValue>? storageTier;
  /// <p>Any tags assigned to the snapshot.</p>
  final pulumi.Input<List<Tag>>? tags;
  /// <p>The ID of the volume that was used to create the snapshot. Snapshots created by the <a>CopySnapshot</a> action have an arbitrary volume ID that should not be used for any purpose.</p>
  final pulumi.Input<String>? volumeId;
  /// <p>The size of the volume, in GiB.</p>
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [AwsEc2SnapshotProperties].
  /// [dataEncryptionKeyId] <p>The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  /// [description] <p>The description for the snapshot.</p>
  /// [encrypted] <p>Indicates whether the snapshot is encrypted.</p>
  /// [kmsKeyId] <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.</p>
  /// [outpostArn] <p>The ARN of the Outpost on which the snapshot is stored. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html'>Amazon EBS local snapshots on Outposts</a> in the <i>Amazon EBS User Guide</i>.</p>
  /// [ownerAlias] <p>The Amazon Web Services owner alias, from an Amazon-maintained list (<code>amazon</code>). This is not the user-configured Amazon Web Services account alias set using the IAM console.</p>
  /// [ownerId] <p>The ID of the Amazon Web Services account that owns the EBS snapshot.</p>
  /// [progress] <p>The progress of the snapshot, as a percentage.</p>
  /// [restoreExpiryTime] <p>Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.</p>
  /// [snapshotId] <p>The ID of the snapshot. Each snapshot receives a unique identifier when it is created.</p>
  /// [sseType] <p>Reserved for future use.</p>
  /// [startTime] <p>The time stamp when the snapshot was initiated.</p>
  /// [state] <p>The snapshot state.</p>
  /// [stateMessage] <p>Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  /// [storageTier] <p>The storage tier in which the snapshot is stored. <code>standard</code> indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. <code>archive</code> indicates that the snapshot is currently archived and that it must be restored before it can be used.</p>
  /// [tags] <p>Any tags assigned to the snapshot.</p>
  /// [volumeId] <p>The ID of the volume that was used to create the snapshot. Snapshots created by the <a>CopySnapshot</a> action have an arbitrary volume ID that should not be used for any purpose.</p>
  /// [volumeSize] <p>The size of the volume, in GiB.</p>
  AwsEc2SnapshotProperties({
    this.dataEncryptionKeyId,
    this.description,
    this.encrypted,
    this.kmsKeyId,
    this.outpostArn,
    this.ownerAlias,
    this.ownerId,
    this.progress,
    this.restoreExpiryTime,
    this.snapshotId,
    this.sseType,
    this.startTime,
    this.state,
    this.stateMessage,
    this.storageTier,
    this.tags,
    this.volumeId,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataEncryptionKeyId': ?dataEncryptionKeyId,
      'description': ?description,
      'encrypted': ?encrypted,
      'kmsKeyId': ?kmsKeyId,
      'outpostArn': ?outpostArn,
      'ownerAlias': ?ownerAlias,
      'ownerId': ?ownerId,
      'progress': ?progress,
      'restoreExpiryTime': ?restoreExpiryTime,
      'snapshotId': ?snapshotId,
      'sseType': ?pulumi.Input.mapOptionalInputValue<SSETypeEnumValue, Map<String, dynamic>>(sseType, (value) => value.toMap()),
      'startTime': ?startTime,
      'state': ?pulumi.Input.mapOptionalInputValue<SnapshotStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateMessage': ?stateMessage,
      'storageTier': ?pulumi.Input.mapOptionalInputValue<StorageTierEnumValue, Map<String, dynamic>>(storageTier, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory AwsEc2SnapshotProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2SnapshotProperties(
      dataEncryptionKeyId: map['dataEncryptionKeyId'] == null ? null : (map['dataEncryptionKeyId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn']! as String).input(),
      ownerAlias: map['ownerAlias'] == null ? null : (map['ownerAlias']! as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId']! as String).input(),
      progress: map['progress'] == null ? null : (map['progress']! as String).input(),
      restoreExpiryTime: map['restoreExpiryTime'] == null ? null : (map['restoreExpiryTime']! as String).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
      sseType: map['sseType'] == null ? null : (SSETypeEnumValue.fromMap((map['sseType']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (SnapshotStateEnumValue.fromMap((map['state']! as Map).cast<String, dynamic>())).input(),
      stateMessage: map['stateMessage'] == null ? null : (map['stateMessage']! as String).input(),
      storageTier: map['storageTier'] == null ? null : (StorageTierEnumValue.fromMap((map['storageTier']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize']! as int).input(),
    );
  }
}

