// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreToPointInTime2 {
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

  ClusterRestoreToPointInTime2({
    this.restoreToTime,
    this.restoreType,
    this.sourceClusterIdentifier,
    this.sourceClusterResourceId,
    this.useLatestRestorableTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final restoreToTimeValue = restoreToTime;
    if (restoreToTimeValue != null) {
      map['restoreToTime'] = restoreToTimeValue;
    }
    final restoreTypeValue = restoreType;
    if (restoreTypeValue != null) {
      map['restoreType'] = restoreTypeValue;
    }
    final sourceClusterIdentifierValue = sourceClusterIdentifier;
    if (sourceClusterIdentifierValue != null) {
      map['sourceClusterIdentifier'] = sourceClusterIdentifierValue;
    }
    final sourceClusterResourceIdValue = sourceClusterResourceId;
    if (sourceClusterResourceIdValue != null) {
      map['sourceClusterResourceId'] = sourceClusterResourceIdValue;
    }
    final useLatestRestorableTimeValue = useLatestRestorableTime;
    if (useLatestRestorableTimeValue != null) {
      map['useLatestRestorableTime'] = useLatestRestorableTimeValue;
    }
    return map;
  }

  factory ClusterRestoreToPointInTime2.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreToPointInTime2(
      restoreToTime:
          map['restoreToTime'] == null ? null : map['restoreToTime'] as String,
      restoreType:
          map['restoreType'] == null ? null : map['restoreType'] as String,
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
