// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_filter.dart';
import 'get_snapshots_snapshot.dart';

/// Result data returned by getSnapshots.
class GetSnapshotsResult {
  /// Identifier of the DB instance from which the snapshot was taken.
  final String? dbInstanceIdentifier;
  /// Identifier of the DB snapshot.
  final String? dbSnapshotIdentifier;
  final List<GetSnapshotsFilter>? filters;
  final bool? includePublic;
  final bool? includeShared;
  final String? region;
  /// Type of the DB snapshot.
  final String? snapshotType;
  /// List of snapshots.
  final List<GetSnapshotsSnapshot>? snapshots;

  /// Creates a new [GetSnapshotsResult].
  /// [dbInstanceIdentifier] Identifier of the DB instance from which the snapshot was taken.
  /// [dbSnapshotIdentifier] Identifier of the DB snapshot.
  /// [filters] Optional.
  /// [includePublic] Optional.
  /// [includeShared] Optional.
  /// [region] Optional.
  /// [snapshotType] Type of the DB snapshot.
  /// [snapshots] List of snapshots.
  const GetSnapshotsResult({
    this.dbInstanceIdentifier,
    this.dbSnapshotIdentifier,
    this.filters,
    this.includePublic,
    this.includeShared,
    this.region,
    this.snapshotType,
    this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbSnapshotIdentifier': ?dbSnapshotIdentifier,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'includePublic': ?includePublic,
      'includeShared': ?includeShared,
      'region': ?region,
      'snapshotType': ?snapshotType,
      'snapshots': ?(() { final guardedValue = snapshots; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSnapshotIdentifier: (() { final guardedValue = map['dbSnapshotIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotsFilter>(guardedValue, (value) => GetSnapshotsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      includePublic: (() { final guardedValue = map['includePublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeShared: (() { final guardedValue = map['includeShared']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotsSnapshot>(guardedValue, (value) => GetSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
