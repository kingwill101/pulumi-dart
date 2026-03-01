// ignore_for_file: unused_element, unnecessary_cast


class GetRamDirectoriesDirectoryLog {
  /// The level of log.
  final String level;
  /// The message of log.
  final String message;
  /// The step of log.
  final String step;
  /// The time stamp of log.
  final String timeStamp;

  /// Creates a new [GetRamDirectoriesDirectoryLog].
  /// [level] The level of log.
  /// [message] The message of log.
  /// [step] The step of log.
  /// [timeStamp] The time stamp of log.
  GetRamDirectoriesDirectoryLog({
    required this.level,
    required this.message,
    required this.step,
    required this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'message': message,
      'step': step,
      'timeStamp': timeStamp,
    };
  }

  factory GetRamDirectoriesDirectoryLog.fromMap(Map<String, dynamic> map) {
    return GetRamDirectoriesDirectoryLog(
      level: map['level'] as String,
      message: map['message'] as String,
      step: map['step'] as String,
      timeStamp: map['timeStamp'] as String,
    );
  }
}

