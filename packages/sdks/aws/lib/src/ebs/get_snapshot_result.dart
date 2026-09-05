// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_filter.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// ARN of the EBS Snapshot.
  final String? arn;
  /// The data encryption key identifier for the snapshot.
  final String? dataEncryptionKeyId;
  /// Description for the snapshot
  final String? description;
  /// Whether the snapshot is encrypted.
  final bool? encrypted;
  final List<GetSnapshotFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN for the KMS encryption key.
  final String? kmsKeyId;
  final bool? mostRecent;
  /// ARN of the Outpost on which the snapshot is stored.
  final String? outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  final String? ownerAlias;
  /// AWS account ID of the EBS snapshot owner.
  final String? ownerId;
  final List<String>? owners;
  final String? region;
  final List<String>? restorableByUserIds;
  /// Snapshot ID (e.g., snap-59fcb34e).
  final String? snapshotId;
  final List<String>? snapshotIds;
  /// Time stamp when the snapshot was initiated.
  final String? startTime;
  /// Snapshot state.
  final String? state;
  /// Storage tier in which the snapshot is stored.
  final String? storageTier;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// Volume ID (e.g., vol-59fcb34e).
  final String? volumeId;
  /// Size of the drive in GiBs.
  final int? volumeSize;

  /// Creates a new [GetSnapshotResult].
  /// [arn] ARN of the EBS Snapshot.
  /// [dataEncryptionKeyId] The data encryption key identifier for the snapshot.
  /// [description] Description for the snapshot
  /// [encrypted] Whether the snapshot is encrypted.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [mostRecent] Optional.
  /// [outpostArn] ARN of the Outpost on which the snapshot is stored.
  /// [ownerAlias] Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  /// [ownerId] AWS account ID of the EBS snapshot owner.
  /// [owners] Optional.
  /// [region] Optional.
  /// [restorableByUserIds] Optional.
  /// [snapshotId] Snapshot ID (e.g., snap-59fcb34e).
  /// [snapshotIds] Optional.
  /// [startTime] Time stamp when the snapshot was initiated.
  /// [state] Snapshot state.
  /// [storageTier] Storage tier in which the snapshot is stored.
  /// [tags] Map of tags for the resource.
  /// [volumeId] Volume ID (e.g., vol-59fcb34e).
  /// [volumeSize] Size of the drive in GiBs.
  const GetSnapshotResult({
    this.arn,
    this.dataEncryptionKeyId,
    this.description,
    this.encrypted,
    this.filters,
    this.id,
    this.kmsKeyId,
    this.mostRecent,
    this.outpostArn,
    this.ownerAlias,
    this.ownerId,
    this.owners,
    this.region,
    this.restorableByUserIds,
    this.snapshotId,
    this.snapshotIds,
    this.startTime,
    this.state,
    this.storageTier,
    this.tags,
    this.volumeId,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataEncryptionKeyId': ?dataEncryptionKeyId,
      'description': ?description,
      'encrypted': ?encrypted,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'mostRecent': ?mostRecent,
      'outpostArn': ?outpostArn,
      'ownerAlias': ?ownerAlias,
      'ownerId': ?ownerId,
      'owners': ?owners,
      'region': ?region,
      'restorableByUserIds': ?restorableByUserIds,
      'snapshotId': ?snapshotId,
      'snapshotIds': ?snapshotIds,
      'startTime': ?startTime,
      'state': ?state,
      'storageTier': ?storageTier,
      'tags': ?tags,
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataEncryptionKeyId: (() { final guardedValue = map['dataEncryptionKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotFilter>(guardedValue, (value) => GetSnapshotFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerAlias: (() { final guardedValue = map['ownerAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorableByUserIds: (() { final guardedValue = map['restorableByUserIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotIds: (() { final guardedValue = map['snapshotIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageTier: (() { final guardedValue = map['storageTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
