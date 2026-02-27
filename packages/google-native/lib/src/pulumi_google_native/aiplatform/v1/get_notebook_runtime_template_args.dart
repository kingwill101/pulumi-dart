// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<String>? project;

  GetNotebookRuntimeTemplateArgs({
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

  factory GetNotebookRuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          pulumi.Input.asInput<String>(map['notebookRuntimeTemplateId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
