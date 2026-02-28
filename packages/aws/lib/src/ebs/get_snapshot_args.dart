// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_filter.dart';

/// {@template pulumi_ebs_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_snapshot_get_snapshot_args_doc}
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

  /// Creates a new [GetSnapshotArgs].
  /// [filters] One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-snapshots in the AWS CLI reference][1].
  /// [mostRecent] If more than one result is returned, use the most recent snapshot.
  /// [owners] Returns the snapshots owned by the specified owner id. Multiple owners can be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restorableByUserIds] One or more AWS accounts IDs that can create volumes from the snapshot.
  /// [snapshotIds] Returns information on a specific snapshot_id.
  /// [tags] Map of tags for the resource.
  GetSnapshotArgs({
    List<GetSnapshotFilter>? filters,
    bool? mostRecent,
    List<String>? owners,
    String? region,
    List<String>? restorableByUserIds,
    List<String>? snapshotIds,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetSnapshotFilter>>(filters),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      region = pulumi.Input.asOptionalInput<String>(region),
      restorableByUserIds = pulumi.Input.asOptionalInput<List<String>>(restorableByUserIds),
      snapshotIds = pulumi.Input.asOptionalInput<List<String>>(snapshotIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSnapshotFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSnapshotFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mostRecent': ?mostRecent,
      'owners': ?owners,
      'region': ?region,
      'restorableByUserIds': ?restorableByUserIds,
      'snapshotIds': ?snapshotIds,
      'tags': ?tags,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSnapshotFilter>(map['filters'], (value) => GetSnapshotFilter.fromMap((value as Map).cast<String, dynamic>())),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      owners: map['owners'] == null ? null : (map['owners'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      restorableByUserIds: map['restorableByUserIds'] == null ? null : (map['restorableByUserIds'] as List).cast<String>(),
      snapshotIds: map['snapshotIds'] == null ? null : (map['snapshotIds'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

