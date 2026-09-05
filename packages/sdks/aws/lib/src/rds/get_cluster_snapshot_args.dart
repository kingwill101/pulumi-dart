// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_cluster_snapshot_get_cluster_snapshot_args_doc}
/// Arguments for getClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_rds_get_cluster_snapshot_get_cluster_snapshot_args_doc}
class GetClusterSnapshotArgs {
  /// Returns the list of snapshots created by the specific db_cluster
  final pulumi.Input<String?>? dbClusterIdentifier;
  /// Returns information on a specific snapshot_id.
  final pulumi.Input<String?>? dbClusterSnapshotIdentifier;
  /// Set this value to true to include manual DB Cluster Snapshots that are public and can be
  /// copied or restored by any AWS account, otherwise set this value to false. The default is `false`.
  final pulumi.Input<bool?>? includePublic;
  /// Set this value to true to include shared manual DB Cluster Snapshots from other
  /// AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.
  /// The default is `false`.
  final pulumi.Input<bool?>? includeShared;
  /// If more than one result is returned, use the most recent Snapshot.
  final pulumi.Input<bool?>? mostRecent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Type of snapshots to be returned. If you don't specify a SnapshotType
  /// value, then both automated and manual DB cluster snapshots are returned. Shared and public DB Cluster Snapshots are not
  /// included in the returned results by default. Possible values are, `automated`, `manual`, `shared`, `public` and `awsbackup`.
  final pulumi.Input<String?>? snapshotType;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired DB cluster snapshot.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetClusterSnapshotArgs].
  /// [dbClusterIdentifier] Returns the list of snapshots created by the specific db_cluster
  /// [dbClusterSnapshotIdentifier] Returns information on a specific snapshot_id.
  /// [includePublic] Set this value to true to include manual DB Cluster Snapshots that are public and can be
  /// [includeShared] Set this value to true to include shared manual DB Cluster Snapshots from other
  /// [mostRecent] If more than one result is returned, use the most recent Snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Type of snapshots to be returned. If you don't specify a SnapshotType
  /// [tags] Mapping of tags, each pair of which must exactly match
  const GetClusterSnapshotArgs({
    this.dbClusterIdentifier,
    this.dbClusterSnapshotIdentifier,
    this.includePublic,
    this.includeShared,
    this.mostRecent,
    this.region,
    this.snapshotType,
    this.tags,
  });

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
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterSnapshotIdentifier: (() { final guardedValue = map['dbClusterSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includePublic: (() { final guardedValue = map['includePublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeShared: (() { final guardedValue = map['includeShared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
