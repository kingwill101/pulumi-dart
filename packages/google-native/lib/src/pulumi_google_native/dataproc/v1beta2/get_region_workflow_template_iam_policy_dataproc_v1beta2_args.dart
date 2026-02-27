// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionWorkflowTemplateIamPolicy.
class GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
    required this.workflowTemplateId,
  });

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
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
      workflowTemplateId:
          pulumi.Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
