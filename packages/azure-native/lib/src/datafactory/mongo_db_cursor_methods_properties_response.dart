// ignore_for_file: unused_element, unnecessary_cast


/// Cursor methods for Mongodb query
class MongoDbCursorMethodsPropertiesResponse {
  /// Specifies the maximum number of documents the server returns. limit() is analogous to the LIMIT statement in a SQL database. Type: integer (or Expression with resultType integer).
  final dynamic limit;
  /// Specifies the fields to return in the documents that match the query filter. To return all fields in the matching documents, omit this parameter. Type: string (or Expression with resultType string).
  final dynamic project;
  /// Specifies the how many documents skipped and where MongoDB begins returning results. This approach may be useful in implementing paginated results. Type: integer (or Expression with resultType integer).
  final dynamic skip;
  /// Specifies the order in which the query returns matching documents. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  final dynamic sort;

  /// Creates a new [MongoDbCursorMethodsPropertiesResponse].
  /// [limit] Specifies the maximum number of documents the server returns. limit() is analogous to the LIMIT statement in a SQL database. Type: integer (or Expression with resultType integer).
  /// [project] Specifies the fields to return in the documents that match the query filter. To return all fields in the matching documents, omit this parameter. Type: string (or Expression with resultType string).
  /// [skip] Specifies the how many documents skipped and where MongoDB begins returning results. This approach may be useful in implementing paginated results. Type: integer (or Expression with resultType integer).
  /// [sort] Specifies the order in which the query returns matching documents. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  MongoDbCursorMethodsPropertiesResponse({
    this.limit,
    this.project,
    this.skip,
    this.sort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'project': ?project,
      'skip': ?skip,
      'sort': ?sort,
    };
  }

  factory MongoDbCursorMethodsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbCursorMethodsPropertiesResponse(
      limit: map['limit'] == null ? null : map['limit'],
      project: map['project'] == null ? null : map['project'],
      skip: map['skip'] == null ? null : map['skip'],
      sort: map['sort'] == null ? null : map['sort'],
    );
  }
}

