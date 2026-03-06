// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_zfs_snapshot_filter.dart';

/// Result data returned by getOpenZfsSnapshot.
class GetOpenZfsSnapshotResult {
  /// Amazon Resource Name of the snapshot.
  final String arn;
  /// Time that the resource was created.
  final String creationTime;
  final List<GetOpenZfsSnapshotFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? mostRecent;
  /// Name of the snapshot.
  final String? name;
  final String region;
  /// ID of the snapshot.
  final String snapshotId;
  final List<String>? snapshotIds;
  /// List of Tag values, with a maximum of 50 elements.
  final Map<String, String> tags;
  /// ID of the volume that the snapshot is of.
  final String volumeId;

  /// Creates a new [GetOpenZfsSnapshotResult].
  /// [arn] Amazon Resource Name of the snapshot.
  /// [creationTime] Time that the resource was created.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mostRecent] Optional.
  /// [name] Name of the snapshot.
  /// [region] Required.
  /// [snapshotId] ID of the snapshot.
  /// [snapshotIds] Optional.
  /// [tags] List of Tag values, with a maximum of 50 elements.
  /// [volumeId] ID of the volume that the snapshot is of.
  const GetOpenZfsSnapshotResult({
    required this.arn,
    required this.creationTime,
    this.filters,
    required this.id,
    this.mostRecent,
    this.name,
    required this.region,
    required this.snapshotId,
    this.snapshotIds,
    required this.tags,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTime': creationTime,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOpenZfsSnapshotFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'region': region,
      'snapshotId': snapshotId,
      'snapshotIds': ?snapshotIds,
      'tags': tags,
      'volumeId': volumeId,
    };
  }

  factory GetOpenZfsSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOpenZfsSnapshotFilter>(guardedValue, (value) => GetOpenZfsSnapshotFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      snapshotId: map['snapshotId'] as String,
      snapshotIds: (() { final guardedValue = map['snapshotIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (map['tags'] as Map).cast<String, String>(),
      volumeId: map['volumeId'] as String,
    );
  }
}

