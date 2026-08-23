// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_filter.dart';

/// {@template pulumi_rds_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_rds_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  /// Returns the list of snapshots created by the specific db_instance.
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// Returns information on a specific snapshot_id.
  final pulumi.Input<String>? dbSnapshotIdentifier;
  /// Configuration block(s) used to filter snapshots with AWS supported attributes. Detailed below.
  final pulumi.Input<List<GetSnapshotsFilter>>? filters;
  /// Set this value to `true` to include manual DB snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to `false`. The default is `false`.
  final pulumi.Input<bool>? includePublic;
  /// Set this value to `true` to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to `false`. The default is `false`.
  final pulumi.Input<bool>? includeShared;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of snapshots to be returned. If you don't specify a SnapshotType value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. Possible values are `automated`, `manual`, `shared`, `public` and `awsbackup`.
  final pulumi.Input<String>? snapshotType;

  /// Creates a new [GetSnapshotsArgs].
  /// [dbInstanceIdentifier] Returns the list of snapshots created by the specific db_instance.
  /// [dbSnapshotIdentifier] Returns information on a specific snapshot_id.
  /// [filters] Configuration block(s) used to filter snapshots with AWS supported attributes. Detailed below.
  /// [includePublic] Set this value to `true` to include manual DB snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to `false`. The default is `false`.
  /// [includeShared] Set this value to `true` to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to `false`. The default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotType] Type of snapshots to be returned. If you don't specify a SnapshotType value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. Possible values are `automated`, `manual`, `shared`, `public` and `awsbackup`.
  const GetSnapshotsArgs({
    this.dbInstanceIdentifier,
    this.dbSnapshotIdentifier,
    this.filters,
    this.includePublic,
    this.includeShared,
    this.region,
    this.snapshotType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSnapshotsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSnapshotsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'region': ?region,
      'snapshotType': ?snapshotType,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSnapshotIdentifier: (() { final guardedValue = map['dbSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSnapshotsFilter>(guardedValue, (value) => GetSnapshotsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includePublic: (() { final guardedValue = map['includePublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeShared: (() { final guardedValue = map['includeShared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
