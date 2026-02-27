// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateArgs {
  final Input<String> location;
  final Input<String> notebookRuntimeTemplateId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          Input.asInput<String>(map['notebookRuntimeTemplateId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
