// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_filter.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// ARN of the EBS Snapshot.
  final String arn;
  /// The data encryption key identifier for the snapshot.
  final String dataEncryptionKeyId;
  /// Description for the snapshot
  final String description;
  /// Whether the snapshot is encrypted.
  final bool encrypted;
  final List<GetSnapshotFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN for the KMS encryption key.
  final String kmsKeyId;
  final bool? mostRecent;
  /// ARN of the Outpost on which the snapshot is stored.
  final String outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  final String ownerAlias;
  /// AWS account ID of the EBS snapshot owner.
  final String ownerId;
  final List<String>? owners;
  final String region;
  final List<String>? restorableByUserIds;
  /// Snapshot ID (e.g., snap-59fcb34e).
  final String snapshotId;
  final List<String>? snapshotIds;
  /// Time stamp when the snapshot was initiated.
  final String startTime;
  /// Snapshot state.
  final String state;
  /// Storage tier in which the snapshot is stored.
  final String storageTier;
  /// Map of tags for the resource.
  final Map<String, String> tags;
  /// Volume ID (e.g., vol-59fcb34e).
  final String volumeId;
  /// Size of the drive in GiBs.
  final int volumeSize;

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
  /// [region] Required.
  /// [restorableByUserIds] Optional.
  /// [snapshotId] Snapshot ID (e.g., snap-59fcb34e).
  /// [snapshotIds] Optional.
  /// [startTime] Time stamp when the snapshot was initiated.
  /// [state] Snapshot state.
  /// [storageTier] Storage tier in which the snapshot is stored.
  /// [tags] Map of tags for the resource.
  /// [volumeId] Volume ID (e.g., vol-59fcb34e).
  /// [volumeSize] Size of the drive in GiBs.
  GetSnapshotResult({
    required this.arn,
    required this.dataEncryptionKeyId,
    required this.description,
    required this.encrypted,
    this.filters,
    required this.id,
    required this.kmsKeyId,
    this.mostRecent,
    required this.outpostArn,
    required this.ownerAlias,
    required this.ownerId,
    this.owners,
    required this.region,
    this.restorableByUserIds,
    required this.snapshotId,
    this.snapshotIds,
    required this.startTime,
    required this.state,
    required this.storageTier,
    required this.tags,
    required this.volumeId,
    required this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dataEncryptionKeyId': dataEncryptionKeyId,
      'description': description,
      'encrypted': encrypted,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'kmsKeyId': kmsKeyId,
      'mostRecent': ?mostRecent,
      'outpostArn': outpostArn,
      'ownerAlias': ownerAlias,
      'ownerId': ownerId,
      'owners': ?owners,
      'region': region,
      'restorableByUserIds': ?restorableByUserIds,
      'snapshotId': snapshotId,
      'snapshotIds': ?snapshotIds,
      'startTime': startTime,
      'state': state,
      'storageTier': storageTier,
      'tags': tags,
      'volumeId': volumeId,
      'volumeSize': volumeSize,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      arn: map['arn'] as String,
      dataEncryptionKeyId: map['dataEncryptionKeyId'] as String,
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotFilter>(guardedValue, (value) => GetSnapshotFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostArn: map['outpostArn'] as String,
      ownerAlias: map['ownerAlias'] as String,
      ownerId: map['ownerId'] as String,
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: map['region'] as String,
      restorableByUserIds: (() { final guardedValue = map['restorableByUserIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      snapshotId: map['snapshotId'] as String,
      snapshotIds: (() { final guardedValue = map['snapshotIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      storageTier: map['storageTier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      volumeId: map['volumeId'] as String,
      volumeSize: map['volumeSize'] as int,
    );
  }
}

