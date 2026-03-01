// ignore_for_file: unused_element, unnecessary_cast

import 'status_level_types.dart';

/// Instance view status.
class InstanceViewStatus {
  /// The status code.
  final String? code;
  /// The short localizable label for the status.
  final String? displayStatus;
  /// The level code.
  final StatusLevelTypes? level;
  /// The detailed status message, including for alerts and error messages.
  final String? message;
  /// The time of the status.
  final String? time;

  /// Creates a new [InstanceViewStatus].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  InstanceViewStatus({
    this.code,
    this.displayStatus,
    this.level,
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'displayStatus': ?displayStatus,
      'level': ?level == null ? null : level!.value,
      'message': ?message,
      'time': ?time,
    };
  }

  factory InstanceViewStatus.fromMap(Map<String, dynamic> map) {
    return InstanceViewStatus(
      code: map['code'] == null ? null : map['code'] as String,
      displayStatus: map['displayStatus'] == null ? null : map['displayStatus'] as String,
      level: map['level'] == null ? null : StatusLevelTypes.fromValue(map['level'] as String),
      message: map['message'] == null ? null : map['message'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

