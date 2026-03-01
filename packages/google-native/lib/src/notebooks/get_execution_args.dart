// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v1_get_execution_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_get_execution_args_doc}
class GetExecutionArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExecutionArgs].
  /// [executionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetExecutionArgs({
    required String executionId,
    required String location,
    String? project,
  }) : executionId = pulumi.Input.asInput<String>(executionId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs(
      executionId: map['executionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
