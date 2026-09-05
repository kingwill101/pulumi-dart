// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_ids_filter.dart';

/// Result data returned by getSnapshotIds.
class GetSnapshotIdsResult {
  final List<GetSnapshotIdsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of EBS snapshot IDs, sorted by creation time in descending order.
  final List<String>? ids;
  final List<String>? owners;
  final String? region;
  final List<String>? restorableByUserIds;

  /// Creates a new [GetSnapshotIdsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of EBS snapshot IDs, sorted by creation time in descending order.
  /// [owners] Optional.
  /// [region] Optional.
  /// [restorableByUserIds] Optional.
  const GetSnapshotIdsResult({
    this.filters,
    this.id,
    this.ids,
    this.owners,
    this.region,
    this.restorableByUserIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotIdsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'owners': ?owners,
      'region': ?region,
      'restorableByUserIds': ?restorableByUserIds,
    };
  }

  factory GetSnapshotIdsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotIdsFilter>(guardedValue, (value) => GetSnapshotIdsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorableByUserIds: (() { final guardedValue = map['restorableByUserIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
