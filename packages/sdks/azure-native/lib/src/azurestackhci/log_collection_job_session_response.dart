// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a session for collecting logs from an edge device.
class LogCollectionJobSessionResponse {
  /// A unique identifier for correlating this log collection session with other operations or sessions.
  final pulumi.Input<String> correlationId;
  /// The timestamp when log collection ended, in ISO 8601 format.
  final pulumi.Input<String> endTime;
  /// The size of the collected logs in bytes.
  final pulumi.Input<int> logSize;
  /// The timestamp when log collection started, in ISO 8601 format.
  final pulumi.Input<String> startTime;
  /// The status of the log collection session.
  final pulumi.Input<String> status;
  /// The total time logs were collected for, in ISO 8601 duration format.
  final pulumi.Input<String> timeCollected;

  /// Creates a new [LogCollectionJobSessionResponse].
  /// [correlationId] A unique identifier for correlating this log collection session with other operations or sessions.
  /// [endTime] The timestamp when log collection ended, in ISO 8601 format.
  /// [logSize] The size of the collected logs in bytes.
  /// [startTime] The timestamp when log collection started, in ISO 8601 format.
  /// [status] The status of the log collection session.
  /// [timeCollected] The total time logs were collected for, in ISO 8601 duration format.
  LogCollectionJobSessionResponse({
    required this.correlationId,
    required this.endTime,
    required this.logSize,
    required this.startTime,
    required this.status,
    required this.timeCollected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationId': correlationId,
      'endTime': endTime,
      'logSize': logSize,
      'startTime': startTime,
      'status': status,
      'timeCollected': timeCollected,
    };
  }

  factory LogCollectionJobSessionResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionJobSessionResponse(
      correlationId: (map['correlationId'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      logSize: (map['logSize'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      timeCollected: (map['timeCollected'] as String).input(),
    );
  }
}

