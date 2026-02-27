// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionWorkflowTemplateIamPolicy.
class GetRegionWorkflowTemplateIamPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  GetRegionWorkflowTemplateIamPolicyArgs({
    this.project,
    required this.regionId,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    map['workflowTemplateId'] = workflowTemplateId;
    return map;
  }

  factory GetRegionWorkflowTemplateIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionWorkflowTemplateIamPolicyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
      workflowTemplateId:
          pulumi.Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
