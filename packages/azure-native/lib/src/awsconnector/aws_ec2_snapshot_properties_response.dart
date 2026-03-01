// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_state_enum_value_response.dart';
import 'ssetype_enum_value_response.dart';
import 'storage_tier_enum_value_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2Snapshot
class AwsEc2SnapshotPropertiesResponse {
  /// <p>The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  final String? dataEncryptionKeyId;
  /// <p>The description for the snapshot.</p>
  final String? description;
  /// <p>Indicates whether the snapshot is encrypted.</p>
  final bool? encrypted;
  /// <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.</p>
  final String? kmsKeyId;
  /// <p>The ARN of the Outpost on which the snapshot is stored. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html'>Amazon EBS local snapshots on Outposts</a> in the <i>Amazon EBS User Guide</i>.</p>
  final String? outpostArn;
  /// <p>The Amazon Web Services owner alias, from an Amazon-maintained list (<code>amazon</code>). This is not the user-configured Amazon Web Services account alias set using the IAM console.</p>
  final String? ownerAlias;
  /// <p>The ID of the Amazon Web Services account that owns the EBS snapshot.</p>
  final String? ownerId;
  /// <p>The progress of the snapshot, as a percentage.</p>
  final String? progress;
  /// <p>Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.</p>
  final String? restoreExpiryTime;
  /// <p>The ID of the snapshot. Each snapshot receives a unique identifier when it is created.</p>
  final String? snapshotId;
  /// <p>Reserved for future use.</p>
  final SSETypeEnumValueResponse? sseType;
  /// <p>The time stamp when the snapshot was initiated.</p>
  final String? startTime;
  /// <p>The snapshot state.</p>
  final SnapshotStateEnumValueResponse? state;
  /// <p>Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by <a>DescribeSnapshots</a>.</p>
  final String? stateMessage;
  /// <p>The storage tier in which the snapshot is stored. <code>standard</code> indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. <code>archive</code> indicates that the snapshot is currently archived and that it must be restored before it can be used.</p>
  final StorageTierEnumValueResponse? storageTier;
  /// <p>Any tags assigned to the snapshot.</p>
  final List<TagResponse>? tags;
  /// <p>The ID of the volume that was used to create the snapshot. Snapshots created by the <a>CopySnapshot</a> action have an arbitrary volume ID that should not be used for any purpose.</p>
  final String? volumeId;
  /// <p>The size of the volume, in GiB.</p>
  final int? volumeSize;

  /// Creates a new [AwsEc2SnapshotPropertiesResponse].
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
  AwsEc2SnapshotPropertiesResponse({
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
      'sseType': ?sseType == null ? null : sseType!.toMap(),
      'startTime': ?startTime,
      'state': ?state == null ? null : state!.toMap(),
      'stateMessage': ?stateMessage,
      'storageTier': ?storageTier == null ? null : storageTier!.toMap(),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory AwsEc2SnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2SnapshotPropertiesResponse(
      dataEncryptionKeyId: map['dataEncryptionKeyId'] == null ? null : map['dataEncryptionKeyId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      ownerAlias: map['ownerAlias'] == null ? null : map['ownerAlias'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      progress: map['progress'] == null ? null : map['progress'] as String,
      restoreExpiryTime: map['restoreExpiryTime'] == null ? null : map['restoreExpiryTime'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      sseType: map['sseType'] == null ? null : SSETypeEnumValueResponse.fromMap((map['sseType'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : SnapshotStateEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      stateMessage: map['stateMessage'] == null ? null : map['stateMessage'] as String,
      storageTier: map['storageTier'] == null ? null : StorageTierEnumValueResponse.fromMap((map['storageTier'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
    );
  }
}

