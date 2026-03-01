// ignore_for_file: unused_element, unnecessary_cast


class ShareSnapshotSchedule {
  /// The name of the snapshot schedule.
  final String name;
  /// The interval of the synchronization with the source data. Possible values are `Hour` and `Day`.
  final String recurrence;
  /// The synchronization with the source data's start time.
  final String startTime;

  /// Creates a new [ShareSnapshotSchedule].
  /// [name] The name of the snapshot schedule.
  /// [recurrence] The interval of the synchronization with the source data. Possible values are `Hour` and `Day`.
  /// [startTime] The synchronization with the source data's start time.
  ShareSnapshotSchedule({
    required this.name,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory ShareSnapshotSchedule.fromMap(Map<String, dynamic> map) {
    return ShareSnapshotSchedule(
      name: map['name'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

