// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_cluster_snapshot_get_cluster_snapshot_args_doc}
/// Arguments for getClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_rds_get_cluster_snapshot_get_cluster_snapshot_args_doc}
class GetClusterSnapshotArgs {
  /// Returns the list of snapshots created by the specific db_cluster
  final pulumi.Input<String>? dbClusterIdentifier;

  /// Returns information on a specific snapshot_id.
  final pulumi.Input<String>? dbClusterSnapshotIdentifier;

  /// Set this value to true to include manual DB Cluster Snapshots that are public and can be
  /// copied or restored by any AWS account, otherwise set this value to false. The default is `false`.
  final pulumi.Input<bool>? includePublic;

  /// Set this value to true to include shared manual DB Cluster Snapshots from other
  /// AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.
  /// The default is `false`.
  final pulumi.Input<bool>? includeShared;

  /// If more than one result is returned, use the most recent Snapshot.
  final pulumi.Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Type of snapshots to be returned. If you don't specify a SnapshotType
  /// value, then both automated and manual DB cluster snapshots are returned. Shared and public DB Cluster Snapshots are not
  /// included in the returned results by default. Possible values are, `automated`, `manual`, `shared`, `public` and `awsbackup`.
  final pulumi.Input<String>? snapshotType;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired DB cluster snapshot.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClusterSnapshotArgs].
  /// [dbClusterIdentifier] Returns the list of snapshots created by the specific db_cluster
  /// [dbClusterSnapshotIdentifier] Returns information on a specific snapshot_id.
  /// [includePublic] Set this value to true to include manual DB Cluster Snapshots that are public and can be
  /// [includeShared] Set this value to true to include shared manual DB Cluster Snapshots from other
  /// [mostRecent] If more than one result is returned, use the most recent Snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Type of snapshots to be returned. If you don't specify a SnapshotType
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetClusterSnapshotArgs({
    String? dbClusterIdentifier,
    String? dbClusterSnapshotIdentifier,
    bool? includePublic,
    bool? includeShared,
    bool? mostRecent,
    String? region,
    String? snapshotType,
    Map<String, String>? tags,
  }) : dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(
         dbClusterIdentifier,
       ),
       dbClusterSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(
         dbClusterSnapshotIdentifier,
       ),
       includePublic = pulumi.Input.asOptionalInput<bool>(includePublic),
       includeShared = pulumi.Input.asOptionalInput<bool>(includeShared),
       mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
       region = pulumi.Input.asOptionalInput<String>(region),
       snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbClusterSnapshotIdentifier': ?dbClusterSnapshotIdentifier,
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'snapshotType': ?snapshotType,
      'tags': ?tags,
    };
  }

  factory GetClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterSnapshotArgs(
      dbClusterIdentifier: map['dbClusterIdentifier'] == null
          ? null
          : map['dbClusterIdentifier'] as String,
      dbClusterSnapshotIdentifier: map['dbClusterSnapshotIdentifier'] == null
          ? null
          : map['dbClusterSnapshotIdentifier'] as String,
      includePublic: map['includePublic'] == null
          ? null
          : map['includePublic'] as bool,
      includeShared: map['includeShared'] == null
          ? null
          : map['includeShared'] as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotType: map['snapshotType'] == null
          ? null
          : map['snapshotType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
