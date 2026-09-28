// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolCapacityStatus {
  /// Number of user sessions that are currently being used for WorkSpaces in the pool.
  final pulumi.Input<int> activeUserSessions;
  /// Number of user sessions currently being used for WorkSpaces in the pool.
  final pulumi.Input<int> actualUserSessions;
  /// Number of user sessions available for WorkSpaces in the pool.
  final pulumi.Input<int> availableUserSessions;
  /// Number of user sessions required for WorkSpaces in the pool.
  final pulumi.Input<int> desiredUserSessions;

  /// Creates a new [PoolCapacityStatus].
  /// [activeUserSessions] Number of user sessions that are currently being used for WorkSpaces in the pool.
  /// [actualUserSessions] Number of user sessions currently being used for WorkSpaces in the pool.
  /// [availableUserSessions] Number of user sessions available for WorkSpaces in the pool.
  /// [desiredUserSessions] Number of user sessions required for WorkSpaces in the pool.
  const PoolCapacityStatus({
    required this.activeUserSessions,
    required this.actualUserSessions,
    required this.availableUserSessions,
    required this.desiredUserSessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeUserSessions': activeUserSessions,
      'actualUserSessions': actualUserSessions,
      'availableUserSessions': availableUserSessions,
      'desiredUserSessions': desiredUserSessions,
    };
  }

  factory PoolCapacityStatus.fromMap(Map<String, dynamic> map) {
    return PoolCapacityStatus(
      activeUserSessions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['activeUserSessions'])),
      actualUserSessions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['actualUserSessions'])),
      availableUserSessions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableUserSessions'])),
      desiredUserSessions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['desiredUserSessions'])),
    );
  }
}
