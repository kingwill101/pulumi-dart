// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRestoreToPointInTime {
  /// The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `useLatestRestorableTime`.
  final pulumi.Input<String>? restoreToTime;
  /// The type of restore to be performed. Valid values are `full-copy`, `copy-on-write`.
  final pulumi.Input<String>? restoreType;
  /// The identifier of the source DB cluster from which to restore. Must match the identifier of an existing DB cluster.
  final pulumi.Input<String> sourceClusterIdentifier;
  /// A boolean value that indicates whether the DB cluster is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restoreToTime`.
  final pulumi.Input<bool>? useLatestRestorableTime;

  /// Creates a new [ClusterRestoreToPointInTime].
  /// [restoreToTime] The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `useLatestRestorableTime`.
  /// [restoreType] The type of restore to be performed. Valid values are `full-copy`, `copy-on-write`.
  /// [sourceClusterIdentifier] The identifier of the source DB cluster from which to restore. Must match the identifier of an existing DB cluster.
  /// [useLatestRestorableTime] A boolean value that indicates whether the DB cluster is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restoreToTime`.
  const ClusterRestoreToPointInTime({
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
      restoreToTime: (() { final guardedValue = map['restoreToTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreType: (() { final guardedValue = map['restoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceClusterIdentifier: pulumi.Input.fromValue(map['sourceClusterIdentifier'] as String),
      useLatestRestorableTime: (() { final guardedValue = map['useLatestRestorableTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
