// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Document.
class DocumentArgs {
  /// The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  final Input<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  final Input<String>? database;

  /// The client-assigned document ID to use for this document during creation.
  final Input<String> documentId;

  /// The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  final Input<String> fields;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  DocumentArgs({
    required this.collection,
    this.database,
    required this.documentId,
    required this.fields,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    map['documentId'] = documentId;
    map['fields'] = fields;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      collection: Input.asInput<String>(map['collection']),
      database: Input.asOptionalInput<String>(map['database']),
      documentId: Input.asInput<String>(map['documentId']),
      fields: Input.asInput<String>(map['fields']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
