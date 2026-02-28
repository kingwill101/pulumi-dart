// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_workflow_config_args_doc}
/// Arguments for getWorkflowConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_workflow_config_args_doc}
class GetWorkflowConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowConfigId;

  /// Creates a new [GetWorkflowConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workflowConfigId] Required.
  GetWorkflowConfigArgs({
    required String location,
    String? project,
    required String repositoryId,
    required String workflowConfigId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId),
        workflowConfigId = pulumi.Input.asInput<String>(workflowConfigId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      workflowConfigId: map['workflowConfigId'] as String,
    );
  }
}
