// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_rds_get_snapshot_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// Returns the list of snapshots created by the specific db_instance
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// Returns information on a specific snapshot_id.
  final pulumi.Input<String>? dbSnapshotIdentifier;
  /// Set this value to true to include manual DB snapshots that are public and can be
  /// copied or restored by any AWS account, otherwise set this value to false. The default is `false`.
  final pulumi.Input<bool>? includePublic;
  /// Set this value to true to include shared manual DB snapshots from other
  /// AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.
  /// The default is `false`.
  final pulumi.Input<bool>? includeShared;
  /// If more than one result is returned, use the most
  /// recent Snapshot.
  final pulumi.Input<bool>? mostRecent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of snapshots to be returned. If you don't specify a SnapshotType
  /// value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not
  /// included in the returned results by default. Possible values are, `automated`, `manual`, `shared`, `public` and `awsbackup`.
  final pulumi.Input<String>? snapshotType;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired DB snapshot.
  ///
  /// > **NOTE:** One of either `db_instance_identifier` or `db_snapshot_identifier` is required.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSnapshotArgs].
  /// [dbInstanceIdentifier] Returns the list of snapshots created by the specific db_instance
  /// [dbSnapshotIdentifier] Returns information on a specific snapshot_id.
  /// [includePublic] Set this value to true to include manual DB snapshots that are public and can be
  /// [includeShared] Set this value to true to include shared manual DB snapshots from other
  /// [mostRecent] If more than one result is returned, use the most
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Type of snapshots to be returned. If you don't specify a SnapshotType
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetSnapshotArgs({
    this.dbInstanceIdentifier,
    this.dbSnapshotIdentifier,
    this.includePublic,
    this.includeShared,
    this.mostRecent,
    this.region,
    this.snapshotType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'snapshotType': ?snapshotType,
      'tags': ?tags,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : ((map['dbInstanceIdentifier'] as String).input()).input(),
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null ? null : ((map['dbSnapshotIdentifier'] as String).input()).input(),
      includePublic: map['includePublic'] == null ? null : ((map['includePublic'] as bool).input()).input(),
      includeShared: map['includeShared'] == null ? null : ((map['includeShared'] as bool).input()).input(),
      mostRecent: map['mostRecent'] == null ? null : ((map['mostRecent'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      snapshotType: map['snapshotType'] == null ? null : ((map['snapshotType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

