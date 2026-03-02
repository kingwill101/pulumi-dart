// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_status_response.dart';

/// Execution Status
class ExecutionStatusResponse {
  /// target resource statuses
  final pulumi.Input<List<StageStatusResponse>>? stageHistory;
  /// Deployment status
  final pulumi.Input<int>? status;
  /// status details
  final pulumi.Input<String>? statusMessage;
  /// The lastModified timestamp of the Status
  final pulumi.Input<String>? updateTime;

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
      'stageHistory': ?pulumi.Input.mapOptionalInputValue<List<StageStatusResponse>, List<Map<String, dynamic>>>(stageHistory, (value) => pulumi.Input.encodeList<StageStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'statusMessage': ?statusMessage,
      'updateTime': ?updateTime,
    };
  }

  factory ExecutionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionStatusResponse(
      stageHistory: map['stageHistory'] == null ? null : (pulumi.Input.decodeList<StageStatusResponse>(map['stageHistory'], (value) => StageStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
      statusMessage: map['statusMessage'] == null ? null : (map['statusMessage'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

