// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_snapshot_filter/get_snapshot_filter.dart';

/// Arguments for getSnapshot.
class GetSnapshotArgs {
  /// One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-snapshots in the AWS CLI reference][1].
  final pulumi.Input<List<GetSnapshotFilter>>? filters;

  /// If more than one result is returned, use the most recent snapshot.
  final pulumi.Input<bool>? mostRecent;

  /// Returns the snapshots owned by the specified owner id. Multiple owners can be specified.
  final pulumi.Input<List<String>>? owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// One or more AWS accounts IDs that can create volumes from the snapshot.
  final pulumi.Input<List<String>>? restorableByUserIds;

  /// Returns information on a specific snapshot_id.
  final pulumi.Input<List<String>>? snapshotIds;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetSnapshotArgs({
    this.filters,
    this.mostRecent,
    this.owners,
    this.region,
    this.restorableByUserIds,
    this.snapshotIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetSnapshotFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetSnapshotFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
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
    final snapshotIdsValue = snapshotIds;
    if (snapshotIdsValue != null) {
      map['snapshotIds'] = snapshotIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetSnapshotFilter>>(map['filters']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      owners: pulumi.Input.asOptionalInput<List<String>>(map['owners']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restorableByUserIds: pulumi.Input.asOptionalInput<List<String>>(
          map['restorableByUserIds']),
      snapshotIds:
          pulumi.Input.asOptionalInput<List<String>>(map['snapshotIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
