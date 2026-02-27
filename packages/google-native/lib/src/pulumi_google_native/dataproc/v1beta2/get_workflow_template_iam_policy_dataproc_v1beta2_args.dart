// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflowTemplateIamPolicy.
class GetWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowTemplateId;

  GetWorkflowTemplateIamPolicyDataprocV1beta2Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.workflowTemplateId,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workflowTemplateId:
          pulumi.Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
