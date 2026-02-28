// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
/// Arguments for getWorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
class GetWorkflowTemplateDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<int>? version;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateDataprocV1beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [version] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateDataprocV1beta2Args({
    required String location,
    String? project,
    int? version,
    required String workflowTemplateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      version = pulumi.Input.asOptionalInput<int>(version),
      workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'version': ?version,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetWorkflowTemplateDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateDataprocV1beta2Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      version: map['version'] == null ? null : map['version'] as int,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}

