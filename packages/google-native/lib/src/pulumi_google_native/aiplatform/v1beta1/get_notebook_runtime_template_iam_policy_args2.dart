// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNotebookRuntimeTemplateIamPolicy.
class GetNotebookRuntimeTemplateIamPolicyArgs2 {
  final Input<String> location;
  final Input<String> notebookRuntimeTemplateId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetNotebookRuntimeTemplateIamPolicyArgs2({
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

  factory GetNotebookRuntimeTemplateIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          Input.asInput<String>(map['notebookRuntimeTemplateId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
