// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionWorkflowTemplateIamPolicy.
class GetRegionWorkflowTemplateIamPolicyArgs2 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> regionId;
  final Input<String> workflowTemplateId;

  GetRegionWorkflowTemplateIamPolicyArgs2({
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

  factory GetRegionWorkflowTemplateIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetRegionWorkflowTemplateIamPolicyArgs2(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
      workflowTemplateId: Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
