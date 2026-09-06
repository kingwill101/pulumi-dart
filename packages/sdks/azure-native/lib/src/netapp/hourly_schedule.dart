// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hourly Schedule properties
class HourlySchedule {
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int?>? minute;
  /// Hourly snapshot count to keep
  final pulumi.Input<int?>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double?>? usedBytes;

  /// Creates a new [HourlySchedule].
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Hourly snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  const HourlySchedule({
    this.minute,
    this.snapshotsToKeep,
    this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
      'usedBytes': ?usedBytes,
    };
  }

  factory HourlySchedule.fromMap(Map<String, dynamic> map) {
    return HourlySchedule(
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      snapshotsToKeep: (() { final guardedValue = map['snapshotsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      usedBytes: (() { final guardedValue = map['usedBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
