// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_modify_parameter_logs_get_modify_parameter_logs_args_doc}
/// Arguments for getModifyParameterLogs.
/// {@endtemplate}
/// {@macro pulumi_rds_get_modify_parameter_logs_get_modify_parameter_logs_args_doc}
class GetModifyParameterLogsArgs {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The end time.
  final pulumi.Input<String> endTime;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The start time.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetModifyParameterLogsArgs].
  /// [dbInstanceId] The db instance id.
  /// [endTime] The end time.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [startTime] The start time.
  const GetModifyParameterLogsArgs({
    required this.dbInstanceId,
    required this.endTime,
    this.outputFile,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'endTime': endTime,
      'outputFile': ?outputFile,
      'startTime': startTime,
    };
  }

  factory GetModifyParameterLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetModifyParameterLogsArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

