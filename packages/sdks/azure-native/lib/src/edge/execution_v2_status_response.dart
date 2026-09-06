// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_status_response.dart';

/// ExecutionV2 Status
class ExecutionV2StatusResponse {
  /// target resource statuses
  final pulumi.Input<List<StageStatusResponse>?>? stageHistory;
  /// Deployment status
  final pulumi.Input<int?>? status;
  /// status details
  final pulumi.Input<String?>? statusMessage;
  /// The lastModified timestamp of the Status
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ExecutionV2StatusResponse].
  /// [stageHistory] target resource statuses
  /// [status] Deployment status
  /// [statusMessage] status details
  /// [updateTime] The lastModified timestamp of the Status
  const ExecutionV2StatusResponse({
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

  factory ExecutionV2StatusResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionV2StatusResponse(
      stageHistory: (() { final guardedValue = map['stageHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StageStatusResponse>(guardedValue, (value) => StageStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
