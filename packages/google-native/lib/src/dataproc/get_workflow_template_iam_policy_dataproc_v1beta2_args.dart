// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
class GetWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateIamPolicyDataprocV1beta2Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String workflowTemplateId,
  })  : location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workflowTemplateId'] = workflowTemplateId;
    return map;
  }

  factory GetWorkflowTemplateIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetWorkflowTemplateIamPolicyDataprocV1beta2Args(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}
