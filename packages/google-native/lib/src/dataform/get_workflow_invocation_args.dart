// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_workflow_invocation_args_doc}
/// Arguments for getWorkflowInvocation.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_workflow_invocation_args_doc}
class GetWorkflowInvocationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowInvocationId;

  /// Creates a new [GetWorkflowInvocationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workflowInvocationId] Required.
  GetWorkflowInvocationArgs({
    required String location,
    String? project,
    required String repositoryId,
    required String workflowInvocationId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       repositoryId = pulumi.Input.asInput<String>(repositoryId),
       workflowInvocationId = pulumi.Input.asInput<String>(
         workflowInvocationId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workflowInvocationId': workflowInvocationId,
    };
  }

  factory GetWorkflowInvocationArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInvocationArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      workflowInvocationId: map['workflowInvocationId'] as String,
    );
  }
}
