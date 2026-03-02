// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_collection_error_response.dart';

/// Log Collection Session details of the cluster.
class LogCollectionSessionResponse {
  /// CorrelationId of the log collection
  final pulumi.Input<String> correlationId;
  /// End Time of the logs when it was collected
  final pulumi.Input<String> endTimeCollected;
  /// Log Collection Error details of the cluster.
  final pulumi.Input<LogCollectionErrorResponse> logCollectionError;
  /// LogCollection job type
  final pulumi.Input<String> logCollectionJobType;
  /// LogCollection status
  final pulumi.Input<String> logCollectionStatus;
  /// End Time of the logs when it was collected
  final pulumi.Input<String> logEndTime;
  /// Size of the logs collected
  final pulumi.Input<double> logSize;
  /// Start Time of the logs when it was collected
  final pulumi.Input<String> logStartTime;
  /// Duration of logs collected
  final pulumi.Input<String> timeCollected;

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
      'logCollectionError': pulumi.Input.mapInputValue<LogCollectionErrorResponse, Map<String, dynamic>>(logCollectionError, (value) => value.toMap()),
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
      correlationId: (map['correlationId'] as String).input(),
      endTimeCollected: (map['endTimeCollected'] as String).input(),
      logCollectionError: (LogCollectionErrorResponse.fromMap((map['logCollectionError'] as Map).cast<String, dynamic>())).input(),
      logCollectionJobType: (map['logCollectionJobType'] as String).input(),
      logCollectionStatus: (map['logCollectionStatus'] as String).input(),
      logEndTime: (map['logEndTime'] as String).input(),
      logSize: (map['logSize'] as double).input(),
      logStartTime: (map['logStartTime'] as String).input(),
      timeCollected: (map['timeCollected'] as String).input(),
    );
  }
}

