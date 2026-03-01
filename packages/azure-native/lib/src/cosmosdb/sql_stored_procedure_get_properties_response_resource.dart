// ignore_for_file: unused_element, unnecessary_cast


class SqlStoredProcedureGetPropertiesResponseResource {
  /// Body of the Stored Procedure
  final String? body;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB SQL storedProcedure
  final String id;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

  /// Creates a new [SqlStoredProcedureGetPropertiesResponseResource].
  /// [body] Body of the Stored Procedure
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB SQL storedProcedure
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  SqlStoredProcedureGetPropertiesResponseResource({
    this.body,
    required this.etag,
    required this.id,
    required this.rid,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'etag': etag,
      'id': id,
      'rid': rid,
      'ts': ts,
    };
  }

  factory SqlStoredProcedureGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlStoredProcedureGetPropertiesResponseResource(
      body: map['body'] == null ? null : map['body'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      rid: map['rid'] as String,
      ts: map['ts'] as double,
    );
  }
}

