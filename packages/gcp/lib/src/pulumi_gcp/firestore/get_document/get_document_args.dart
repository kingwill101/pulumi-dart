// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDocument.
class GetDocumentArgs {
  /// The name of the collection of documents.
  final pulumi.Input<String> collection;

  /// The name of the Firestore database.
  final pulumi.Input<String> database;

  /// The id of the document to get.
  final pulumi.Input<String> documentId;

  /// The project in which the database resides.
  final pulumi.Input<String>? project;

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
      collection: pulumi.Input.asInput<String>(map['collection']),
      database: pulumi.Input.asInput<String>(map['database']),
      documentId: pulumi.Input.asInput<String>(map['documentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
