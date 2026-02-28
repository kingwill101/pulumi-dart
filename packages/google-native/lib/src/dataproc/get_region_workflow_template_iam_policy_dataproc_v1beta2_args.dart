// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  /// [workflowTemplateId] Required.
  GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String regionId,
    required String workflowTemplateId,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        regionId = pulumi.Input.asInput<String>(regionId),
        workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    map['workflowTemplateId'] = workflowTemplateId;
    return map;
  }

  factory GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}
