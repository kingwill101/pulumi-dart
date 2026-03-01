// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreToPointInTime {
  /// Date and time in UTC format to restore the database cluster to. Conflicts with `use_latest_restorable_time`.
  final String? restoreToTime;

  /// Type of restore to be performed.
  /// Valid options are `full-copy` (default) and `copy-on-write`.
  final String? restoreType;

  /// Identifier of the source database cluster from which to restore. When restoring from a cluster in another AWS account, the identifier is the ARN of that cluster.
  final String? sourceClusterIdentifier;

  /// Cluster resource ID of the source database cluster from which to restore. To be used for restoring a deleted cluster in the same account which still has a retained automatic backup available.
  final String? sourceClusterResourceId;

  /// Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with `restore_to_time`.
  final bool? useLatestRestorableTime;

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
      restoreToTime: map['restoreToTime'] == null
          ? null
          : map['restoreToTime'] as String,
      restoreType: map['restoreType'] == null
          ? null
          : map['restoreType'] as String,
      sourceClusterIdentifier: map['sourceClusterIdentifier'] == null
          ? null
          : map['sourceClusterIdentifier'] as String,
      sourceClusterResourceId: map['sourceClusterResourceId'] == null
          ? null
          : map['sourceClusterResourceId'] as String,
      useLatestRestorableTime: map['useLatestRestorableTime'] == null
          ? null
          : map['useLatestRestorableTime'] as bool,
    );
  }
}
