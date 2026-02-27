// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDocument.
class GetDocumentDialogflowV2Args {
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDocumentDialogflowV2Args({
    required this.documentId,
    required this.knowledgeBaseId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentId'] = documentId;
    map['knowledgeBaseId'] = knowledgeBaseId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDocumentDialogflowV2Args.fromMap(Map<String, dynamic> map) {
    return GetDocumentDialogflowV2Args(
      documentId: pulumi.Input.asInput<String>(map['documentId']),
      knowledgeBaseId: pulumi.Input.asInput<String>(map['knowledgeBaseId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
