// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateArgs2 {
  final Input<String> location;
  final Input<String> notebookRuntimeTemplateId;
  final Input<String>? project;

  GetNotebookRuntimeTemplateArgs2({
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

  factory GetNotebookRuntimeTemplateArgs2.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateArgs2(
      location: Input.asInput<String>(map['location']),
      notebookRuntimeTemplateId:
          Input.asInput<String>(map['notebookRuntimeTemplateId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
