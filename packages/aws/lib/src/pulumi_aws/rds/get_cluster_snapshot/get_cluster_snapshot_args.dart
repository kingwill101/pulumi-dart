// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClusterSnapshot.
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

  GetClusterSnapshotArgs({
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
    final map = <String, dynamic>{};
    final dbClusterIdentifierValue = dbClusterIdentifier;
    if (dbClusterIdentifierValue != null) {
      map['dbClusterIdentifier'] = dbClusterIdentifierValue;
    }
    final dbClusterSnapshotIdentifierValue = dbClusterSnapshotIdentifier;
    if (dbClusterSnapshotIdentifierValue != null) {
      map['dbClusterSnapshotIdentifier'] = dbClusterSnapshotIdentifierValue;
    }
    final includePublicValue = includePublic;
    if (includePublicValue != null) {
      map['includePublic'] = includePublicValue;
    }
    final includeSharedValue = includeShared;
    if (includeSharedValue != null) {
      map['includeShared'] = includeSharedValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = snapshotTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterSnapshotArgs(
      dbClusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['dbClusterIdentifier']),
      dbClusterSnapshotIdentifier: pulumi.Input.asOptionalInput<String>(
          map['dbClusterSnapshotIdentifier']),
      includePublic: pulumi.Input.asOptionalInput<bool>(map['includePublic']),
      includeShared: pulumi.Input.asOptionalInput<bool>(map['includeShared']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotType: pulumi.Input.asOptionalInput<String>(map['snapshotType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
