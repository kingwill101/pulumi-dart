// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hourly Schedule properties
class HourlyScheduleResponse {
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Hourly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final pulumi.Input<double>? usedBytes;

  /// Creates a new [HourlyScheduleResponse].
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Hourly snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  HourlyScheduleResponse({
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

  factory HourlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return HourlyScheduleResponse(
      minute: map['minute'] == null ? null : (map['minute'] as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep'] as int).input(),
      usedBytes: map['usedBytes'] == null ? null : (map['usedBytes'] as double).input(),
    );
  }
}

