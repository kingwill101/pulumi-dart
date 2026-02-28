// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDocument.
class GetDocumentResult {
  final String collection;
  final String createTime;
  final String database;
  final String documentId;
  final String fields;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String path;
  final String? project;
  final String updateTime;

  /// Creates a new [GetDocumentResult].
  /// [collection] Required.
  /// [createTime] Required.
  /// [database] Required.
  /// [documentId] Required.
  /// [fields] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [path] Required.
  /// [project] Optional.
  /// [updateTime] Required.
  GetDocumentResult({
    required this.collection,
    required this.createTime,
    required this.database,
    required this.documentId,
    required this.fields,
    required this.id,
    required this.name,
    required this.path,
    this.project,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['createTime'] = createTime;
    map['database'] = database;
    map['documentId'] = documentId;
    map['fields'] = fields;
    map['id'] = id;
    map['name'] = name;
    map['path'] = path;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      collection: map['collection'] as String,
      createTime: map['createTime'] as String,
      database: map['database'] as String,
      documentId: map['documentId'] as String,
      fields: map['fields'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
