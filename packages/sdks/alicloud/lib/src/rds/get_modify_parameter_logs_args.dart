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
  GetModifyParameterLogsArgs({
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> endTime,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> startTime,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      endTime = pulumi.Input.asInput<String>(endTime),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      startTime = pulumi.Input.asInput<String>(startTime);

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
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

