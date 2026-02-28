// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_document_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_document_args_doc}
class GetDocumentArgs {
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentArgs].
  /// [documentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentArgs({
    required String documentId,
    required String location,
    String? project,
  }) :
      documentId = pulumi.Input.asInput<String>(documentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentId': documentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      documentId: map['documentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

