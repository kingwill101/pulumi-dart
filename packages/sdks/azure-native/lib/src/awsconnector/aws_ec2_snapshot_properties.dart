// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_state_enum_value.dart';
import 'ssetype_enum_value.dart';
import 'storage_tier_enum_value.dart';
import 'tag.dart';

/// Definition of awsEc2Snapshot
class AwsEc2SnapshotProperties {
  /// &lt;p&gt;The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by &lt;a&gt;DescribeSnapshots&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? dataEncryptionKeyId;
  /// &lt;p&gt;The description for the snapshot.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;Indicates whether the snapshot is encrypted.&lt;/p&gt;
  final pulumi.Input<bool>? encrypted;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.&lt;/p&gt;
  final pulumi.Input<String>? kmsKeyId;
  /// &lt;p&gt;The ARN of the Outpost on which the snapshot is stored. For more information, see &lt;a href='https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html'&gt;Amazon EBS local snapshots on Outposts&lt;/a&gt; in the &lt;i&gt;Amazon EBS User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? outpostArn;
  /// &lt;p&gt;The Amazon Web Services owner alias, from an Amazon-maintained list (&lt;code&gt;amazon&lt;/code&gt;). This is not the user-configured Amazon Web Services account alias set using the IAM console.&lt;/p&gt;
  final pulumi.Input<String>? ownerAlias;
  /// &lt;p&gt;The ID of the Amazon Web Services account that owns the EBS snapshot.&lt;/p&gt;
  final pulumi.Input<String>? ownerId;
  /// &lt;p&gt;The progress of the snapshot, as a percentage.&lt;/p&gt;
  final pulumi.Input<String>? progress;
  /// &lt;p&gt;Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.&lt;/p&gt;
  final pulumi.Input<String>? restoreExpiryTime;
  /// &lt;p&gt;The ID of the snapshot. Each snapshot receives a unique identifier when it is created.&lt;/p&gt;
  final pulumi.Input<String>? snapshotId;
  /// &lt;p&gt;Reserved for future use.&lt;/p&gt;
  final pulumi.Input<SSETypeEnumValue>? sseType;
  /// &lt;p&gt;The time stamp when the snapshot was initiated.&lt;/p&gt;
  final pulumi.Input<String>? startTime;
  /// &lt;p&gt;The snapshot state.&lt;/p&gt;
  final pulumi.Input<SnapshotStateEnumValue>? state;
  /// &lt;p&gt;Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by &lt;a&gt;DescribeSnapshots&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? stateMessage;
  /// &lt;p&gt;The storage tier in which the snapshot is stored. &lt;code&gt;standard&lt;/code&gt; indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. &lt;code&gt;archive&lt;/code&gt; indicates that the snapshot is currently archived and that it must be restored before it can be used.&lt;/p&gt;
  final pulumi.Input<StorageTierEnumValue>? storageTier;
  /// &lt;p&gt;Any tags assigned to the snapshot.&lt;/p&gt;
  final pulumi.Input<List<Tag>>? tags;
  /// &lt;p&gt;The ID of the volume that was used to create the snapshot. Snapshots created by the &lt;a&gt;CopySnapshot&lt;/a&gt; action have an arbitrary volume ID that should not be used for any purpose.&lt;/p&gt;
  final pulumi.Input<String>? volumeId;
  /// &lt;p&gt;The size of the volume, in GiB.&lt;/p&gt;
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [AwsEc2SnapshotProperties].
  /// [dataEncryptionKeyId] &lt;p&gt;The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by &lt;a&gt;DescribeSnapshots&lt;/a&gt;.&lt;/p&gt;
  /// [description] &lt;p&gt;The description for the snapshot.&lt;/p&gt;
  /// [encrypted] &lt;p&gt;Indicates whether the snapshot is encrypted.&lt;/p&gt;
  /// [kmsKeyId] &lt;p&gt;The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.&lt;/p&gt;
  /// [outpostArn] &lt;p&gt;The ARN of the Outpost on which the snapshot is stored. For more information, see &lt;a href='https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html'&gt;Amazon EBS local snapshots on Outposts&lt;/a&gt; in the &lt;i&gt;Amazon EBS User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [ownerAlias] &lt;p&gt;The Amazon Web Services owner alias, from an Amazon-maintained list (&lt;code&gt;amazon&lt;/code&gt;). This is not the user-configured Amazon Web Services account alias set using the IAM console.&lt;/p&gt;
  /// [ownerId] &lt;p&gt;The ID of the Amazon Web Services account that owns the EBS snapshot.&lt;/p&gt;
  /// [progress] &lt;p&gt;The progress of the snapshot, as a percentage.&lt;/p&gt;
  /// [restoreExpiryTime] &lt;p&gt;Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.&lt;/p&gt;
  /// [snapshotId] &lt;p&gt;The ID of the snapshot. Each snapshot receives a unique identifier when it is created.&lt;/p&gt;
  /// [sseType] &lt;p&gt;Reserved for future use.&lt;/p&gt;
  /// [startTime] &lt;p&gt;The time stamp when the snapshot was initiated.&lt;/p&gt;
  /// [state] &lt;p&gt;The snapshot state.&lt;/p&gt;
  /// [stateMessage] &lt;p&gt;Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by &lt;a&gt;DescribeSnapshots&lt;/a&gt;.&lt;/p&gt;
  /// [storageTier] &lt;p&gt;The storage tier in which the snapshot is stored. &lt;code&gt;standard&lt;/code&gt; indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. &lt;code&gt;archive&lt;/code&gt; indicates that the snapshot is currently archived and that it must be restored before it can be used.&lt;/p&gt;
  /// [tags] &lt;p&gt;Any tags assigned to the snapshot.&lt;/p&gt;
  /// [volumeId] &lt;p&gt;The ID of the volume that was used to create the snapshot. Snapshots created by the &lt;a&gt;CopySnapshot&lt;/a&gt; action have an arbitrary volume ID that should not be used for any purpose.&lt;/p&gt;
  /// [volumeSize] &lt;p&gt;The size of the volume, in GiB.&lt;/p&gt;
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
      dataEncryptionKeyId: (() { final guardedValue = map['dataEncryptionKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAlias: (() { final guardedValue = map['ownerAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      progress: (() { final guardedValue = map['progress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreExpiryTime: (() { final guardedValue = map['restoreExpiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseType: (() { final guardedValue = map['sseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSETypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotStateEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageTierEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

