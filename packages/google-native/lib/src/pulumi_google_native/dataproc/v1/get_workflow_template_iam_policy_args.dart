// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflowTemplateIamPolicy.
class GetWorkflowTemplateIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowTemplateId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workflowTemplateId:
          pulumi.Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
