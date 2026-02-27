// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_open_zfs_snapshot_filter/get_open_zfs_snapshot_filter.dart';

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

  GetOpenZfsSnapshotResult({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationTime'] = creationTime;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetOpenZfsSnapshotFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['region'] = region;
    map['snapshotId'] = snapshotId;
    final snapshotIdsValue = snapshotIds;
    if (snapshotIdsValue != null) {
      map['snapshotIds'] = snapshotIdsValue;
    }
    map['tags'] = tags;
    map['volumeId'] = volumeId;
    return map;
  }

  factory GetOpenZfsSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetOpenZfsSnapshotFilter>(
              map['filters'],
              (value) => GetOpenZfsSnapshotFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
      snapshotId: map['snapshotId'] as String,
      snapshotIds: map['snapshotIds'] == null
          ? null
          : (map['snapshotIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      volumeId: map['volumeId'] as String,
    );
  }
}
