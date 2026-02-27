// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionWorkflowTemplateIamPolicy.
class GetRegionWorkflowTemplateIamPolicyArgs {
  final Input<String>? project;
  final Input<String> regionId;
  final Input<String> workflowTemplateId;

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
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
      workflowTemplateId: Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
