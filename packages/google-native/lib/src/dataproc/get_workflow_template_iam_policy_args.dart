// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_workflow_template_iam_policy_args_doc}
/// Arguments for getWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_workflow_template_iam_policy_args_doc}
class GetWorkflowTemplateIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateIamPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateIamPolicyArgs({
    required String location,
    String? project,
    required String workflowTemplateId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetWorkflowTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateIamPolicyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}
