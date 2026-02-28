// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_document_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_document_args_doc}
class GetDocumentArgs {
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentArgs].
  /// [documentId] Required.
  /// [knowledgeBaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentArgs({
    required String documentId,
    required String knowledgeBaseId,
    required String location,
    String? project,
  }) :
      documentId = pulumi.Input.asInput<String>(documentId),
      knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentId': documentId,
      'knowledgeBaseId': knowledgeBaseId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      documentId: map['documentId'] as String,
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

