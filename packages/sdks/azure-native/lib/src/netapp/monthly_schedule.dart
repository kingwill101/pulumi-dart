// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly Schedule properties
class MonthlySchedule {
  /// Indicates which days of the month snapshot should be taken. A comma delimited string.
  final pulumi.Input<String>? daysOfMonth;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Monthly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double>? usedBytes;

  /// Creates a new [MonthlySchedule].
  /// [daysOfMonth] Indicates which days of the month snapshot should be taken. A comma delimited string.
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Monthly snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  MonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
    this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonth': ?daysOfMonth,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
      'usedBytes': ?usedBytes,
    };
  }

  factory MonthlySchedule.fromMap(Map<String, dynamic> map) {
    return MonthlySchedule(
      daysOfMonth: map['daysOfMonth'] == null ? null : (map['daysOfMonth']! as String).input(),
      hour: map['hour'] == null ? null : (map['hour']! as int).input(),
      minute: map['minute'] == null ? null : (map['minute']! as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep']! as int).input(),
      usedBytes: map['usedBytes'] == null ? null : (map['usedBytes']! as double).input(),
    );
  }
}

