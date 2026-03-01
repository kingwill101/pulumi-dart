// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'set_value.dart';

/// The properties of a task step.
class FileTaskStep {
  /// The token (git PAT or SAS token of storage account blob) associated with the context for a step.
  final String? contextAccessToken;
  /// The URL(absolute or relative) of the source context for the task step.
  final String? contextPath;
  /// The task template/definition file path relative to the source context.
  final String taskFilePath;
  /// The type of the step.
  /// Expected value is 'FileTask'.
  final String type;
  /// The collection of overridable values that can be passed when running a task.
  final List<SetValue>? values;
  /// The task values/parameters file path relative to the source context.
  final String? valuesFilePath;

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
      'values': ?values == null ? null : pulumi.Input.encodeList<SetValue, Map<String, dynamic>>(values!, (value) => value.toMap()),
      'valuesFilePath': ?valuesFilePath,
    };
  }

  factory FileTaskStep.fromMap(Map<String, dynamic> map) {
    return FileTaskStep(
      contextAccessToken: map['contextAccessToken'] == null ? null : map['contextAccessToken'] as String,
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      taskFilePath: map['taskFilePath'] as String,
      type: map['type'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<SetValue>(map['values'], (value) => SetValue.fromMap((value as Map).cast<String, dynamic>())),
      valuesFilePath: map['valuesFilePath'] == null ? null : map['valuesFilePath'] as String,
    );
  }
}

