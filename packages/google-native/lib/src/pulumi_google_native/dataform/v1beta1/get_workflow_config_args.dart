// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkflowConfig.
class GetWorkflowConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> repositoryId;
  final Input<String> workflowConfigId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      workflowConfigId: Input.asInput<String>(map['workflowConfigId']),
    );
  }
}
