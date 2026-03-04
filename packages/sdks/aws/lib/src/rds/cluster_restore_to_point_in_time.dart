// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRestoreToPointInTime {
  /// Date and time in UTC format to restore the database cluster to. Conflicts with `use_latest_restorable_time`.
  final pulumi.Input<String>? restoreToTime;

  /// Type of restore to be performed.
  /// Valid options are `full-copy` (default) and `copy-on-write`.
  final pulumi.Input<String>? restoreType;

  /// Identifier of the source database cluster from which to restore. When restoring from a cluster in another AWS account, the identifier is the ARN of that cluster.
  final pulumi.Input<String>? sourceClusterIdentifier;

  /// Cluster resource ID of the source database cluster from which to restore. To be used for restoring a deleted cluster in the same account which still has a retained automatic backup available.
  final pulumi.Input<String>? sourceClusterResourceId;

  /// Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with `restore_to_time`.
  final pulumi.Input<bool>? useLatestRestorableTime;

  /// Creates a new [ClusterRestoreToPointInTime].
  /// [restoreToTime] Date and time in UTC format to restore the database cluster to. Conflicts with `use_latest_restorable_time`.
  /// [restoreType] Type of restore to be performed.
  /// [sourceClusterIdentifier] Identifier of the source database cluster from which to restore. When restoring from a cluster in another AWS account, the identifier is the ARN of that cluster.
  /// [sourceClusterResourceId] Cluster resource ID of the source database cluster from which to restore. To be used for restoring a deleted cluster in the same account which still has a retained automatic backup available.
  /// [useLatestRestorableTime] Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with `restore_to_time`.
  ClusterRestoreToPointInTime({
    this.restoreToTime,
    this.restoreType,
    this.sourceClusterIdentifier,
    this.sourceClusterResourceId,
    this.useLatestRestorableTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restoreToTime': ?restoreToTime,
      'restoreType': ?restoreType,
      'sourceClusterIdentifier': ?sourceClusterIdentifier,
      'sourceClusterResourceId': ?sourceClusterResourceId,
      'useLatestRestorableTime': ?useLatestRestorableTime,
    };
  }

  factory ClusterRestoreToPointInTime.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreToPointInTime(
      restoreToTime: (() {
        final guardedValue = map['restoreToTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restoreType: (() {
        final guardedValue = map['restoreType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceClusterIdentifier: (() {
        final guardedValue = map['sourceClusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceClusterResourceId: (() {
        final guardedValue = map['sourceClusterResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useLatestRestorableTime: (() {
        final guardedValue = map['useLatestRestorableTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
