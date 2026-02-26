// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkflowTemplateIamPolicy.
class GetWorkflowTemplateIamPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workflowTemplateId;

  GetWorkflowTemplateIamPolicyArgs({
    required this.location,
    this.project,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workflowTemplateId'] = workflowTemplateId;
    return map;
  }

  factory GetWorkflowTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workflowTemplateId: Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
