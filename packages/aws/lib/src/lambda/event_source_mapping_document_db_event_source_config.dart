// ignore_for_file: unused_element, unnecessary_cast


class EventSourceMappingDocumentDbEventSourceConfig {
  /// Name of the collection to consume within the database. If you do not specify a collection, Lambda consumes all collections.
  final String? collectionName;
  /// Name of the database to consume within the DocumentDB cluster.
  final String databaseName;
  /// Determines what DocumentDB sends to your event stream during document update operations. If set to `UpdateLookup`, DocumentDB sends a delta describing the changes, along with a copy of the entire document. Otherwise, DocumentDB sends only a partial document that contains the changes. Valid values: `UpdateLookup`, `Default`.
  final String? fullDocument;

  /// Creates a new [EventSourceMappingDocumentDbEventSourceConfig].
  /// [collectionName] Name of the collection to consume within the database. If you do not specify a collection, Lambda consumes all collections.
  /// [databaseName] Name of the database to consume within the DocumentDB cluster.
  /// [fullDocument] Determines what DocumentDB sends to your event stream during document update operations. If set to `UpdateLookup`, DocumentDB sends a delta describing the changes, along with a copy of the entire document. Otherwise, DocumentDB sends only a partial document that contains the changes. Valid values: `UpdateLookup`, `Default`.
  EventSourceMappingDocumentDbEventSourceConfig({
    this.collectionName,
    required this.databaseName,
    this.fullDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': ?collectionName,
      'databaseName': databaseName,
      'fullDocument': ?fullDocument,
    };
  }

  factory EventSourceMappingDocumentDbEventSourceConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingDocumentDbEventSourceConfig(
      collectionName: map['collectionName'] == null ? null : map['collectionName'] as String,
      databaseName: map['databaseName'] as String,
      fullDocument: map['fullDocument'] == null ? null : map['fullDocument'] as String,
    );
  }
}

