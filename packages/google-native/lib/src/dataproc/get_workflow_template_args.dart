// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_workflow_template_args_doc}
/// Arguments for getWorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_workflow_template_args_doc}
class GetWorkflowTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<int>? version;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [version] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateArgs({
    required String location,
    String? project,
    int? version,
    required String workflowTemplateId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        version = pulumi.Input.asOptionalInput<int>(version),
        workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      version: map['version'] == null ? null : map['version'] as int,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}
