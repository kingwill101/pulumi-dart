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

  /// Creates a new [ClusterRestoreToPointInTime].
  /// [restoreToTime] The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `use_latest_restorable_time`.
  /// [restoreType] The type of restore to be performed. Valid values are `full-copy`, `copy-on-write`.
  /// [sourceClusterIdentifier] The identifier of the source DB cluster from which to restore. Must match the identifier of an existing DB cluster.
  /// [useLatestRestorableTime] A boolean value that indicates whether the DB cluster is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restore_to_time`.
  ClusterRestoreToPointInTime({
    this.restoreToTime,
    this.restoreType,
    required this.sourceClusterIdentifier,
    this.useLatestRestorableTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restoreToTime': ?restoreToTime,
      'restoreType': ?restoreType,
      'sourceClusterIdentifier': sourceClusterIdentifier,
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
      sourceClusterIdentifier: map['sourceClusterIdentifier'] as String,
      useLatestRestorableTime: map['useLatestRestorableTime'] == null
          ? null
          : map['useLatestRestorableTime'] as bool,
    );
  }
}
