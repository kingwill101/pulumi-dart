// ignore_for_file: unused_element, unnecessary_cast


/// Hourly Schedule properties
class HourlyScheduleResponse {
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Hourly snapshot count to keep
  final int? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final double? usedBytes;

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
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
      usedBytes: map['usedBytes'] == null ? null : map['usedBytes'] as double,
    );
  }
}

