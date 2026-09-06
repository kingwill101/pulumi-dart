// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly Schedule properties
class MonthlyScheduleResponse {
  /// Indicates which days of the month snapshot should be taken. A comma delimited string.
  final pulumi.Input<String?>? daysOfMonth;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final pulumi.Input<int?>? hour;
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int?>? minute;
  /// Monthly snapshot count to keep
  final pulumi.Input<int?>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double?>? usedBytes;

  /// Creates a new [MonthlyScheduleResponse].
  /// [daysOfMonth] Indicates which days of the month snapshot should be taken. A comma delimited string.
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Monthly snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  const MonthlyScheduleResponse({
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

  factory MonthlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MonthlyScheduleResponse(
      daysOfMonth: (() { final guardedValue = map['daysOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      snapshotsToKeep: (() { final guardedValue = map['snapshotsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      usedBytes: (() { final guardedValue = map['usedBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
