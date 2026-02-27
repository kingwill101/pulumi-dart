// ignore_for_file: unused_element, unnecessary_cast

class ClusterRestoreToPointInTime {
  /// The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `use_latest_restorable_time`.
  final String? restoreToTime;

  /// The type of restore to be performed. Valid values are `full-copy`, `copy-on-write`.
  final String? restoreType;

  /// The identifier of the source DB cluster from which to restore. Must match the identifier of an existing DB cluster.
  final String sourceClusterIdentifier;

  /// A boolean value that indicates whether the DB cluster is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restore_to_time`.
  final bool? useLatestRestorableTime;

  ClusterRestoreToPointInTime({
    this.restoreToTime,
    this.restoreType,
    required this.sourceClusterIdentifier,
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
    map['sourceClusterIdentifier'] = sourceClusterIdentifier;
    final useLatestRestorableTimeValue = useLatestRestorableTime;
    if (useLatestRestorableTimeValue != null) {
      map['useLatestRestorableTime'] = useLatestRestorableTimeValue;
    }
    return map;
  }

  factory ClusterRestoreToPointInTime.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreToPointInTime(
      restoreToTime:
          map['restoreToTime'] == null ? null : map['restoreToTime'] as String,
      restoreType:
          map['restoreType'] == null ? null : map['restoreType'] as String,
      sourceClusterIdentifier: map['sourceClusterIdentifier'] as String,
      useLatestRestorableTime: map['useLatestRestorableTime'] == null
          ? null
          : map['useLatestRestorableTime'] as bool,
    );
  }
}
