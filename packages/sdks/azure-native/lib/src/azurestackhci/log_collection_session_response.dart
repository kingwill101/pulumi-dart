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
  const LogCollectionSessionResponse({
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
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      endTimeCollected: pulumi.Input.fromValue(map['endTimeCollected'] as String),
      logCollectionError: pulumi.Input.fromValue(LogCollectionErrorResponse.fromMap((map['logCollectionError']! as Map).cast<String, dynamic>())),
      logCollectionJobType: pulumi.Input.fromValue(map['logCollectionJobType'] as String),
      logCollectionStatus: pulumi.Input.fromValue(map['logCollectionStatus'] as String),
      logEndTime: pulumi.Input.fromValue(map['logEndTime'] as String),
      logSize: pulumi.Input.fromValue(map['logSize'] as double),
      logStartTime: pulumi.Input.fromValue(map['logStartTime'] as String),
      timeCollected: pulumi.Input.fromValue(map['timeCollected'] as String),
    );
  }
}
