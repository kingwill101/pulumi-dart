// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_status_response.dart';

/// Execution Status
class ExecutionStatusResponse {
  /// target resource statuses
  final List<StageStatusResponse>? stageHistory;
  /// Deployment status
  final int? status;
  /// status details
  final String? statusMessage;
  /// The lastModified timestamp of the Status
  final String? updateTime;

  /// Creates a new [ExecutionStatusResponse].
  /// [stageHistory] target resource statuses
  /// [status] Deployment status
  /// [statusMessage] status details
  /// [updateTime] The lastModified timestamp of the Status
  ExecutionStatusResponse({
    this.stageHistory,
    this.status,
    this.statusMessage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stageHistory': ?stageHistory == null ? null : pulumi.Input.encodeList<StageStatusResponse, Map<String, dynamic>>(stageHistory!, (value) => value.toMap()),
      'status': ?status,
      'statusMessage': ?statusMessage,
      'updateTime': ?updateTime,
    };
  }

  factory ExecutionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionStatusResponse(
      stageHistory: map['stageHistory'] == null ? null : pulumi.Input.decodeList<StageStatusResponse>(map['stageHistory'], (value) => StageStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as int,
      statusMessage: map['statusMessage'] == null ? null : map['statusMessage'] as String,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}

