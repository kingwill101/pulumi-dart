// ignore_for_file: unused_element, unnecessary_cast


/// Daily Schedule properties
class DailySchedule {
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final int? hour;
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Daily snapshot count to keep
  final int? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final double? usedBytes;

  /// Creates a new [DailySchedule].
  /// [hour] Indicates which hour in UTC timezone a snapshot should be taken
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Daily snapshot count to keep
  /// [usedBytes] Resource size in bytes, current storage usage for the volume in bytes
  DailySchedule({
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

  factory DailySchedule.fromMap(Map<String, dynamic> map) {
    return DailySchedule(
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
      usedBytes: map['usedBytes'] == null ? null : map['usedBytes'] as double,
    );
  }
}

