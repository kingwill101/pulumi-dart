// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotebookRuntimeTemplateIamPolicy.
class GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args({
    required this.location,
    required this.notebookRuntimeTemplateId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['notebookRuntimeTemplateId'] = notebookRuntimeTemplateId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          pulumi.Input.asInput<String>(map['notebookRuntimeTemplateId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
