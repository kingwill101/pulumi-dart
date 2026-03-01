// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_modify_parameter_logs_log.dart';

/// Result data returned by getModifyParameterLogs.
class GetModifyParameterLogsResult {
  final String dbInstanceId;
  final String endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetModifyParameterLogsLog> logs;
  final String? outputFile;
  final String startTime;

  /// Creates a new [GetModifyParameterLogsResult].
  /// [dbInstanceId] Required.
  /// [endTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logs] Required.
  /// [outputFile] Optional.
  /// [startTime] Required.
  GetModifyParameterLogsResult({
    required this.dbInstanceId,
    required this.endTime,
    required this.id,
    required this.logs,
    this.outputFile,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'endTime': endTime,
      'id': id,
      'logs': pulumi.Input.encodeList<GetModifyParameterLogsLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'startTime': startTime,
    };
  }

  factory GetModifyParameterLogsResult.fromMap(Map<String, dynamic> map) {
    return GetModifyParameterLogsResult(
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      logs: pulumi.Input.decodeList<GetModifyParameterLogsLog>(map['logs'], (value) => GetModifyParameterLogsLog.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

