// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_snapshot_filter/get_snapshot_filter.dart';

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

  /// Value from an Amazon-maintained list (<span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, `aws-marketplace`, <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span>) of snapshot owners.
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dataEncryptionKeyId'] = dataEncryptionKeyId;
    map['description'] = description;
    map['encrypted'] = encrypted;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetSnapshotFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['outpostArn'] = outpostArn;
    map['ownerAlias'] = ownerAlias;
    map['ownerId'] = ownerId;
    final ownersValue = owners;
    if (ownersValue != null) {
      map['owners'] = ownersValue;
    }
    map['region'] = region;
    final restorableByUserIdsValue = restorableByUserIds;
    if (restorableByUserIdsValue != null) {
      map['restorableByUserIds'] = restorableByUserIdsValue;
    }
    map['snapshotId'] = snapshotId;
    final snapshotIdsValue = snapshotIds;
    if (snapshotIdsValue != null) {
      map['snapshotIds'] = snapshotIdsValue;
    }
    map['startTime'] = startTime;
    map['state'] = state;
    map['storageTier'] = storageTier;
    map['tags'] = tags;
    map['volumeId'] = volumeId;
    map['volumeSize'] = volumeSize;
    return map;
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      arn: map['arn'] as String,
      dataEncryptionKeyId: map['dataEncryptionKeyId'] as String,
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetSnapshotFilter>(
              map['filters'],
              (value) => GetSnapshotFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      outpostArn: map['outpostArn'] as String,
      ownerAlias: map['ownerAlias'] as String,
      ownerId: map['ownerId'] as String,
      owners:
          map['owners'] == null ? null : (map['owners'] as List).cast<String>(),
      region: map['region'] as String,
      restorableByUserIds: map['restorableByUserIds'] == null
          ? null
          : (map['restorableByUserIds'] as List).cast<String>(),
      snapshotId: map['snapshotId'] as String,
      snapshotIds: map['snapshotIds'] == null
          ? null
          : (map['snapshotIds'] as List).cast<String>(),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      storageTier: map['storageTier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      volumeId: map['volumeId'] as String,
      volumeSize: map['volumeSize'] as int,
    );
  }
}
