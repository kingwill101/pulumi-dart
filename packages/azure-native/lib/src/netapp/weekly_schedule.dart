// ignore_for_file: unused_element, unnecessary_cast


/// Weekly Schedule properties, make a snapshot every week at a specific day or days
class WeeklySchedule {
  /// Indicates which weekdays snapshot should be taken, accepts a comma separated list of week day names in english
  final String? day;
  /// Indicates which hour in UTC timezone a snapshot should be taken
  final int? hour;
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Weekly snapshot count to keep
  final int? snapshotsToKeep;
  /// Resource size in bytes, current storage usage for the volume in bytes
  final double? usedBytes;

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
      day: map['day'] == null ? null : map['day'] as String,
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
      usedBytes: map['usedBytes'] == null ? null : map['usedBytes'] as double,
    );
  }
}

