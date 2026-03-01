// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_toolresults_v1beta3_get_execution_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_get_execution_args_doc}
class GetExecutionArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExecutionArgs].
  /// [executionId] Required.
  /// [historyId] Required.
  /// [project] Optional.
  GetExecutionArgs({
    required String executionId,
    required String historyId,
    String? project,
  }) : executionId = pulumi.Input.asInput<String>(executionId),
       historyId = pulumi.Input.asInput<String>(historyId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'historyId': historyId,
      'project': ?project,
    };
  }

  factory GetExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs(
      executionId: map['executionId'] as String,
      historyId: map['historyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
