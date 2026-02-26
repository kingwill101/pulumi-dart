// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_snapshot_ids_filter/get_snapshot_ids_filter.dart';

/// Arguments for getSnapshotIds.
class GetSnapshotIdsArgs {
  /// One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-volumes in the AWS CLI reference][1].
  final Input<List<GetSnapshotIdsFilter>>? filters;

  /// Returns the snapshots owned by the specified owner id. Multiple owners can be specified.
  final Input<List<String>>? owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more AWS accounts IDs that can create volumes from the snapshot.
  final Input<List<String>>? restorableByUserIds;

  GetSnapshotIdsArgs({
    this.filters,
    this.owners,
    this.region,
    this.restorableByUserIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetSnapshotIdsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetSnapshotIdsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ownersValue = owners;
    if (ownersValue != null) {
      map['owners'] = ownersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final restorableByUserIdsValue = restorableByUserIds;
    if (restorableByUserIdsValue != null) {
      map['restorableByUserIds'] = restorableByUserIdsValue;
    }
    return map;
  }

  factory GetSnapshotIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsArgs(
      filters:
          Input.asOptionalInput<List<GetSnapshotIdsFilter>>(map['filters']),
      owners: Input.asOptionalInput<List<String>>(map['owners']),
      region: Input.asOptionalInput<String>(map['region']),
      restorableByUserIds:
          Input.asOptionalInput<List<String>>(map['restorableByUserIds']),
    );
  }
}
