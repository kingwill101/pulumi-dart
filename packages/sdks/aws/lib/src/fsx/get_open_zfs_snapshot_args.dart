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
  const GetOpenZfsSnapshotArgs({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetOpenZfsSnapshotFilter>(guardedValue, (value) => GetOpenZfsSnapshotFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotIds: (() { final guardedValue = map['snapshotIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

