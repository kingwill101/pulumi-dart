// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args_doc}
/// Arguments for getNotebookRuntimeTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args_doc}
class GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args].
  /// [location] Required.
  /// [notebookRuntimeTemplateId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args({
    required String location,
    required String notebookRuntimeTemplateId,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       notebookRuntimeTemplateId = pulumi.Input.asInput<String>(
         notebookRuntimeTemplateId,
       ),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'notebookRuntimeTemplateId': notebookRuntimeTemplateId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args(
      location: map['location'] as String,
      notebookRuntimeTemplateId: map['notebookRuntimeTemplateId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
