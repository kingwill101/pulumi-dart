// ignore_for_file: unused_element, unnecessary_cast


/// The schema object.
class SchemaResponse {
  /// Connection ID associated with this schema
  final String? connectionId;
  /// Content of the schema
  final String? content;
  /// The direction of the schema.
  final String? direction;
  /// ID associated with this schema
  final String? id;
  /// Name of the schema
  final String? name;
  /// The Schema Type
  final String? schemaType;
  /// Uri containing SAS token for the zipped schema
  final String? schemaUri;
  /// Status of the schema
  final String? status;

  /// Creates a new [SchemaResponse].
  /// [connectionId] Connection ID associated with this schema
  /// [content] Content of the schema
  /// [direction] The direction of the schema.
  /// [id] ID associated with this schema
  /// [name] Name of the schema
  /// [schemaType] The Schema Type
  /// [schemaUri] Uri containing SAS token for the zipped schema
  /// [status] Status of the schema
  SchemaResponse({
    this.connectionId,
    this.content,
    this.direction,
    this.id,
    this.name,
    this.schemaType,
    this.schemaUri,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'content': ?content,
      'direction': ?direction,
      'id': ?id,
      'name': ?name,
      'schemaType': ?schemaType,
      'schemaUri': ?schemaUri,
      'status': ?status,
    };
  }

  factory SchemaResponse.fromMap(Map<String, dynamic> map) {
    return SchemaResponse(
      connectionId: map['connectionId'] == null ? null : map['connectionId'] as String,
      content: map['content'] == null ? null : map['content'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schemaType: map['schemaType'] == null ? null : map['schemaType'] as String,
      schemaUri: map['schemaUri'] == null ? null : map['schemaUri'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

