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
    String? dbInstanceIdentifier,
    String? dbSnapshotIdentifier,
    bool? includePublic,
    bool? includeShared,
    bool? mostRecent,
    String? region,
    String? snapshotType,
    Map<String, String>? tags,
  })  : dbInstanceIdentifier =
            pulumi.Input.asOptionalInput<String>(dbInstanceIdentifier),
        dbSnapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(dbSnapshotIdentifier),
        includePublic = pulumi.Input.asOptionalInput<bool>(includePublic),
        includeShared = pulumi.Input.asOptionalInput<bool>(includeShared),
        mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
        region = pulumi.Input.asOptionalInput<String>(region),
        snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbInstanceIdentifierValue = dbInstanceIdentifier;
    if (dbInstanceIdentifierValue != null) {
      map['dbInstanceIdentifier'] = dbInstanceIdentifierValue;
    }
    final dbSnapshotIdentifierValue = dbSnapshotIdentifier;
    if (dbSnapshotIdentifierValue != null) {
      map['dbSnapshotIdentifier'] = dbSnapshotIdentifierValue;
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

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null
          ? null
          : map['dbInstanceIdentifier'] as String,
      dbSnapshotIdentifier: map['dbSnapshotIdentifier'] == null
          ? null
          : map['dbSnapshotIdentifier'] as String,
      includePublic:
          map['includePublic'] == null ? null : map['includePublic'] as bool,
      includeShared:
          map['includeShared'] == null ? null : map['includeShared'] as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotType:
          map['snapshotType'] == null ? null : map['snapshotType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
