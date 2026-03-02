// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'set_value.dart';

/// The properties of a task step.
class FileTaskStep {
  /// The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  final pulumi.Input<String>? contextAccessToken;
  /// The URL(absolute or relative) of the source context for the task step.
  final pulumi.Input<String>? contextPath;
  /// The task template/definition file path relative to the source context.
  final pulumi.Input<String> taskFilePath;
  /// The type of the step.
  /// Expected value is 'FileTask'.
  final pulumi.Input<String> type;
  /// The collection of overridable values that can be passed when running a task.
  final pulumi.Input<List<SetValue>>? values;
  /// The task values/parameters file path relative to the source context.
  final pulumi.Input<String>? valuesFilePath;

  /// Creates a new [FileTaskStep].
  /// [contextAccessToken] The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  /// [contextPath] The URL(absolute or relative) of the source context for the task step.
  /// [taskFilePath] The task template/definition file path relative to the source context.
  /// [type] The type of the step.
  /// [values] The collection of overridable values that can be passed when running a task.
  /// [valuesFilePath] The task values/parameters file path relative to the source context.
  FileTaskStep({
    this.contextAccessToken,
    this.contextPath,
    required this.taskFilePath,
    required this.type,
    this.values,
    this.valuesFilePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextAccessToken': ?contextAccessToken,
      'contextPath': ?contextPath,
      'taskFilePath': taskFilePath,
      'type': type,
      'values': ?pulumi.Input.mapOptionalInputValue<List<SetValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<SetValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'valuesFilePath': ?valuesFilePath,
    };
  }

  factory FileTaskStep.fromMap(Map<String, dynamic> map) {
    return FileTaskStep(
      contextAccessToken: map['contextAccessToken'] == null ? null : (map['contextAccessToken'] as String).input(),
      contextPath: map['contextPath'] == null ? null : (map['contextPath'] as String).input(),
      taskFilePath: (map['taskFilePath'] as String).input(),
      type: (map['type'] as String).input(),
      values: map['values'] == null ? null : (pulumi.Input.decodeList<SetValue>(map['values'], (value) => SetValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      valuesFilePath: map['valuesFilePath'] == null ? null : (map['valuesFilePath'] as String).input(),
    );
  }
}

