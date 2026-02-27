// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<String>? project;

  GetNotebookRuntimeTemplateAiplatformV1beta1Args({
    required this.location,
    required this.notebookRuntimeTemplateId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['notebookRuntimeTemplateId'] = notebookRuntimeTemplateId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNotebookRuntimeTemplateAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          pulumi.Input.asInput<String>(map['notebookRuntimeTemplateId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
