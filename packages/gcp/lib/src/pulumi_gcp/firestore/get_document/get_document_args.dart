// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDocument.
class GetDocumentArgs {
  /// The name of the collection of documents.
  final Input<String> collection;

  /// The name of the Firestore database.
  final Input<String> database;

  /// The id of the document to get.
  final Input<String> documentId;

  /// The project in which the database resides.
  final Input<String>? project;

  GetDocumentArgs({
    required this.collection,
    required this.database,
    required this.documentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['database'] = database;
    map['documentId'] = documentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      collection: Input.asInput<String>(map['collection']),
      database: Input.asInput<String>(map['database']),
      documentId: Input.asInput<String>(map['documentId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
