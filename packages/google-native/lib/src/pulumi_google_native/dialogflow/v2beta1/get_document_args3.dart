// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDocument.
class GetDocumentArgs3 {
  final Input<String> documentId;
  final Input<String> knowledgeBaseId;
  final Input<String> location;
  final Input<String>? project;

  GetDocumentArgs3({
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

  factory GetDocumentArgs3.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs3(
      documentId: Input.asInput<String>(map['documentId']),
      knowledgeBaseId: Input.asInput<String>(map['knowledgeBaseId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
