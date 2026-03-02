// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly Schedule properties, make a snapshot every week at a specific day or days
class WeeklySchedule {
  /// Indicates which weekdays snapshot should be taken, accepts a comma separated list of week day names in english
  final pulumi.Input<String>? day;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Weekly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double>? usedBytes;

  /// Creates a new [WeeklySchedule].
  /// [day] Indicates which weekdays snapshot should be taken, accepts a comma separated list of week day names in english
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Weekly snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  WeeklySchedule({
    this.day,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
    this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
      'usedBytes': ?usedBytes,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      day: map['day'] == null ? null : (map['day']! as String).input(),
      hour: map['hour'] == null ? null : (map['hour']! as int).input(),
      minute: map['minute'] == null ? null : (map['minute']! as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep']! as int).input(),
      usedBytes: map['usedBytes'] == null ? null : (map['usedBytes']! as double).input(),
    );
  }
}

