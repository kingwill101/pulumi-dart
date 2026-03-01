// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_notebook_runtime_template_args_doc}
/// Arguments for getNotebookRuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_args_doc}
class GetNotebookRuntimeTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotebookRuntimeTemplateArgs].
  /// [location] Required.
  /// [notebookRuntimeTemplateId] Required.
  /// [project] Optional.
  GetNotebookRuntimeTemplateArgs({
    required String location,
    required String notebookRuntimeTemplateId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       notebookRuntimeTemplateId = pulumi.Input.asInput<String>(
         notebookRuntimeTemplateId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'notebookRuntimeTemplateId': notebookRuntimeTemplateId,
      'project': ?project,
    };
  }

  factory GetNotebookRuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateArgs(
      location: map['location'] as String,
      notebookRuntimeTemplateId: map['notebookRuntimeTemplateId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
