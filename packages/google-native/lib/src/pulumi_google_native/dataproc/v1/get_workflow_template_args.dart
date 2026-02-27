// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkflowTemplate.
class GetWorkflowTemplateArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<int>? version;
  final Input<String> workflowTemplateId;

  GetWorkflowTemplateArgs({
    required this.location,
    this.project,
    this.version,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    map['workflowTemplateId'] = workflowTemplateId;
    return map;
  }

  factory GetWorkflowTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      version: Input.asOptionalInput<int>(map['version']),
      workflowTemplateId: Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
