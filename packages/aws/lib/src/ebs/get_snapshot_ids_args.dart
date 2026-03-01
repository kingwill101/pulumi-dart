// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_ids_filter.dart';

/// {@template pulumi_ebs_get_snapshot_ids_get_snapshot_ids_args_doc}
/// Arguments for getSnapshotIds.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_snapshot_ids_get_snapshot_ids_args_doc}
class GetSnapshotIdsArgs {
  /// One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-volumes in the AWS CLI reference][1].
  final pulumi.Input<List<GetSnapshotIdsFilter>>? filters;

  /// Returns the snapshots owned by the specified owner id. Multiple owners can be specified.
  final pulumi.Input<List<String>>? owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// One or more AWS accounts IDs that can create volumes from the snapshot.
  final pulumi.Input<List<String>>? restorableByUserIds;

  /// Creates a new [GetSnapshotIdsArgs].
  /// [filters] One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-volumes in the AWS CLI reference][1].
  /// [owners] Returns the snapshots owned by the specified owner id. Multiple owners can be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restorableByUserIds] One or more AWS accounts IDs that can create volumes from the snapshot.
  GetSnapshotIdsArgs({
    List<GetSnapshotIdsFilter>? filters,
    List<String>? owners,
    String? region,
    List<String>? restorableByUserIds,
  }) : filters = pulumi.Input.asOptionalInput<List<GetSnapshotIdsFilter>>(
         filters,
       ),
       owners = pulumi.Input.asOptionalInput<List<String>>(owners),
       region = pulumi.Input.asOptionalInput<String>(region),
       restorableByUserIds = pulumi.Input.asOptionalInput<List<String>>(
         restorableByUserIds,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetSnapshotIdsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetSnapshotIdsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'owners': ?owners,
      'region': ?region,
      'restorableByUserIds': ?restorableByUserIds,
    };
  }

  factory GetSnapshotIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSnapshotIdsFilter>(
              map['filters'],
              (value) => GetSnapshotIdsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      owners: map['owners'] == null
          ? null
          : (map['owners'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      restorableByUserIds: map['restorableByUserIds'] == null
          ? null
          : (map['restorableByUserIds'] as List).cast<String>(),
    );
  }
}
