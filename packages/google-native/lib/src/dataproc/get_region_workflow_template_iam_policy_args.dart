// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
/// Arguments for getRegionWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
class GetRegionWorkflowTemplateIamPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetRegionWorkflowTemplateIamPolicyArgs].
  /// [project] Optional.
  /// [regionId] Required.
  /// [workflowTemplateId] Required.
  GetRegionWorkflowTemplateIamPolicyArgs({
    String? project,
    required String regionId,
    required String workflowTemplateId,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       regionId = pulumi.Input.asInput<String>(regionId),
       workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'regionId': regionId,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetRegionWorkflowTemplateIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionWorkflowTemplateIamPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}
