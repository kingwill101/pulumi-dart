// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflowConfig.
class GetWorkflowConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowConfigId;

  GetWorkflowConfigArgs({
    required this.location,
    this.project,
    required this.repositoryId,
    required this.workflowConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['workflowConfigId'] = workflowConfigId;
    return map;
  }

  factory GetWorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowConfigArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      workflowConfigId: pulumi.Input.asInput<String>(map['workflowConfigId']),
    );
  }
}
