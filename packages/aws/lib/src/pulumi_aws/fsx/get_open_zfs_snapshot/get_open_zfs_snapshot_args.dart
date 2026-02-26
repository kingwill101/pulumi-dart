// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_open_zfs_snapshot_filter/get_open_zfs_snapshot_filter.dart';

/// Arguments for getOpenZfsSnapshot.
class GetOpenZfsSnapshotArgs {
  /// One or more name/value pairs to filter off of. The
  /// supported names are file-system-id or volume-id.
  final Input<List<GetOpenZfsSnapshotFilter>>? filters;

  /// If more than one result is returned, use the most recent snapshot.
  final Input<bool>? mostRecent;

  /// Name of the snapshot.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Returns information on a specific snapshot_id.
  final Input<List<String>>? snapshotIds;

  /// List of Tag values, with a maximum of 50 elements.
  final Input<Map<String, String>>? tags;

  GetOpenZfsSnapshotArgs({
    this.filters,
    this.mostRecent,
    this.name,
    this.region,
    this.snapshotIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetOpenZfsSnapshotFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetOpenZfsSnapshotFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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

  factory GetOpenZfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotArgs(
      filters:
          Input.asOptionalInput<List<GetOpenZfsSnapshotFilter>>(map['filters']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotIds: Input.asOptionalInput<List<String>>(map['snapshotIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
