// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflowTemplate.
class GetWorkflowTemplateDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<int>? version;
  final pulumi.Input<String> workflowTemplateId;

  GetWorkflowTemplateDataprocV1beta2Args({
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

  factory GetWorkflowTemplateDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetWorkflowTemplateDataprocV1beta2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      version: pulumi.Input.asOptionalInput<int>(map['version']),
      workflowTemplateId:
          pulumi.Input.asInput<String>(map['workflowTemplateId']),
    );
  }
}
