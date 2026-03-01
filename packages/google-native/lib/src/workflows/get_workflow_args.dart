// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflows_v1_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_v1_get_workflow_args_doc}
class GetWorkflowArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? revisionId;
  final pulumi.Input<String> workflowId;

  /// Creates a new [GetWorkflowArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [revisionId] Optional.
  /// [workflowId] Required.
  GetWorkflowArgs({
    required String location,
    String? project,
    String? revisionId,
    required String workflowId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
       workflowId = pulumi.Input.asInput<String>(workflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'revisionId': ?revisionId,
      'workflowId': workflowId,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      revisionId: map['revisionId'] == null
          ? null
          : map['revisionId'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}
