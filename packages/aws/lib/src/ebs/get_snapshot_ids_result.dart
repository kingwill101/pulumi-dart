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
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetSnapshotIdsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    final ownersValue = owners;
    if (ownersValue != null) {
      map['owners'] = ownersValue;
    }
    map['region'] = region;
    final restorableByUserIdsValue = restorableByUserIds;
    if (restorableByUserIdsValue != null) {
      map['restorableByUserIds'] = restorableByUserIdsValue;
    }
    return map;
  }

  factory GetSnapshotIdsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSnapshotIdsFilter>(
              map['filters'],
              (value) => GetSnapshotIdsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      owners:
          map['owners'] == null ? null : (map['owners'] as List).cast<String>(),
      region: map['region'] as String,
      restorableByUserIds: map['restorableByUserIds'] == null
          ? null
          : (map['restorableByUserIds'] as List).cast<String>(),
    );
  }
}
