// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_ids_filter.dart';

/// Result data returned by getSnapshotIds.
class GetSnapshotIdsResult {
  final List<GetSnapshotIdsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of EBS snapshot IDs, sorted by creation time in descending order.
  final List<String> ids;
  final List<String>? owners;
  final String region;
  final List<String>? restorableByUserIds;

  /// Creates a new [GetSnapshotIdsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of EBS snapshot IDs, sorted by creation time in descending order.
  /// [owners] Optional.
  /// [region] Required.
  /// [restorableByUserIds] Optional.
  GetSnapshotIdsResult({
    this.filters,
    required this.id,
    required this.ids,
    this.owners,
    required this.region,
    this.restorableByUserIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<GetSnapshotIdsFilter, Map<String, dynamic>>(
              filters!,
              (value) => value.toMap(),
            ),
      'id': id,
      'ids': ids,
      'owners': ?owners,
      'region': region,
      'restorableByUserIds': ?restorableByUserIds,
    };
  }

  factory GetSnapshotIdsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSnapshotIdsFilter>(
              map['filters'],
              (value) => GetSnapshotIdsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      owners: map['owners'] == null
          ? null
          : (map['owners'] as List).cast<String>(),
      region: map['region'] as String,
      restorableByUserIds: map['restorableByUserIds'] == null
          ? null
          : (map['restorableByUserIds'] as List).cast<String>(),
    );
  }
}
