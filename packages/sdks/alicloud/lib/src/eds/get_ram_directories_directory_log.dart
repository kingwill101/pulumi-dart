// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRamDirectoriesDirectoryLog {
  /// The level of log.
  final pulumi.Input<String> level;

  /// The message of log.
  final pulumi.Input<String> message;

  /// The step of log.
  final pulumi.Input<String> step;

  /// The time stamp of log.
  final pulumi.Input<String> timeStamp;

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
      level: pulumi.Input.fromValue(map['level'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      step: pulumi.Input.fromValue(map['step'] as String),
      timeStamp: pulumi.Input.fromValue(map['timeStamp'] as String),
    );
  }
}
