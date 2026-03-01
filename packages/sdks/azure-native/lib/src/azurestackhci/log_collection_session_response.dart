// ignore_for_file: unused_element, unnecessary_cast

import 'log_collection_error_response.dart';

/// Log Collection Session details of the cluster.
class LogCollectionSessionResponse {
  /// CorrelationId of the log collection
  final String correlationId;
  /// End Time of the logs when it was collected
  final String endTimeCollected;
  /// Log Collection Error details of the cluster.
  final LogCollectionErrorResponse logCollectionError;
  /// LogCollection job type
  final String logCollectionJobType;
  /// LogCollection status
  final String logCollectionStatus;
  /// End Time of the logs when it was collected
  final String logEndTime;
  /// Size of the logs collected
  final double logSize;
  /// Start Time of the logs when it was collected
  final String logStartTime;
  /// Duration of logs collected
  final String timeCollected;

  /// Creates a new [LogCollectionSessionResponse].
  /// [correlationId] CorrelationId of the log collection
  /// [endTimeCollected] End Time of the logs when it was collected
  /// [logCollectionError] Log Collection Error details of the cluster.
  /// [logCollectionJobType] LogCollection job type
  /// [logCollectionStatus] LogCollection status
  /// [logEndTime] End Time of the logs when it was collected
  /// [logSize] Size of the logs collected
  /// [logStartTime] Start Time of the logs when it was collected
  /// [timeCollected] Duration of logs collected
  LogCollectionSessionResponse({
    required this.correlationId,
    required this.endTimeCollected,
    required this.logCollectionError,
    required this.logCollectionJobType,
    required this.logCollectionStatus,
    required this.logEndTime,
    required this.logSize,
    required this.logStartTime,
    required this.timeCollected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationId': correlationId,
      'endTimeCollected': endTimeCollected,
      'logCollectionError': logCollectionError.toMap(),
      'logCollectionJobType': logCollectionJobType,
      'logCollectionStatus': logCollectionStatus,
      'logEndTime': logEndTime,
      'logSize': logSize,
      'logStartTime': logStartTime,
      'timeCollected': timeCollected,
    };
  }

  factory LogCollectionSessionResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionSessionResponse(
      correlationId: map['correlationId'] as String,
      endTimeCollected: map['endTimeCollected'] as String,
      logCollectionError: LogCollectionErrorResponse.fromMap((map['logCollectionError'] as Map).cast<String, dynamic>()),
      logCollectionJobType: map['logCollectionJobType'] as String,
      logCollectionStatus: map['logCollectionStatus'] as String,
      logEndTime: map['logEndTime'] as String,
      logSize: map['logSize'] as double,
      logStartTime: map['logStartTime'] as String,
      timeCollected: map['timeCollected'] as String,
    );
  }
}

