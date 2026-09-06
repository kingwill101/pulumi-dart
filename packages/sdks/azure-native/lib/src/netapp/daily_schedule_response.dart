// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Daily Schedule properties
class DailyScheduleResponse {
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int?>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int?>? minute;
  /// Daily snapshot count to keep
  final pulumi.Input<int?>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double?>? usedBytes;

  /// Creates a new [DailyScheduleResponse].
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Daily snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  const DailyScheduleResponse({
    this.hour,
    this.minute,
    this.snapshotsToKeep,
    this.usedBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
      'usedBytes': ?usedBytes,
    };
  }

  factory DailyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return DailyScheduleResponse(
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      snapshotsToKeep: (() { final guardedValue = map['snapshotsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      usedBytes: (() { final guardedValue = map['usedBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
