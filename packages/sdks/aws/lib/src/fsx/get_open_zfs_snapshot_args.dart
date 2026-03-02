// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_zfs_snapshot_filter.dart';

/// {@template pulumi_fsx_get_open_zfs_snapshot_get_open_zfs_snapshot_args_doc}
/// Arguments for getOpenZfsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_fsx_get_open_zfs_snapshot_get_open_zfs_snapshot_args_doc}
class GetOpenZfsSnapshotArgs {
  /// One or more name/value pairs to filter off of. The
  /// supported names are file-system-id or volume-id.
  final pulumi.Input<List<GetOpenZfsSnapshotFilter>>? filters;
  /// If more than one result is returned, use the most recent snapshot.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the snapshot.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Returns information on a specific snapshot_id.
  final pulumi.Input<List<String>>? snapshotIds;
  /// List of Tag values, with a maximum of 50 elements.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetOpenZfsSnapshotArgs].
  /// [filters] One or more name/value pairs to filter off of. The
  /// [mostRecent] If more than one result is returned, use the most recent snapshot.
  /// [name] Name of the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotIds] Returns information on a specific snapshot_id.
  /// [tags] List of Tag values, with a maximum of 50 elements.
  GetOpenZfsSnapshotArgs({
    this.filters,
    this.mostRecent,
    this.name,
    this.region,
    this.snapshotIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetOpenZfsSnapshotFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetOpenZfsSnapshotFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mostRecent': ?mostRecent,
      'name': ?name,
      'region': ?region,
      'snapshotIds': ?snapshotIds,
      'tags': ?tags,
    };
  }

  factory GetOpenZfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetOpenZfsSnapshotFilter>(map['filters']!, (value) => GetOpenZfsSnapshotFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      mostRecent: map['mostRecent'] == null ? null : ((map['mostRecent'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snapshotIds: map['snapshotIds'] == null ? null : (((map['snapshotIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

