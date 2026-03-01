// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB SQL storedProcedure resource object
class SqlStoredProcedureResource {
  /// Body of the Stored Procedure
  final String? body;
  /// Name of the Cosmos DB SQL storedProcedure
  final String id;

  /// Creates a new [SqlStoredProcedureResource].
  /// [body] Body of the Stored Procedure
  /// [id] Name of the Cosmos DB SQL storedProcedure
  SqlStoredProcedureResource({
    this.body,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'id': id,
    };
  }

  factory SqlStoredProcedureResource.fromMap(Map<String, dynamic> map) {
    return SqlStoredProcedureResource(
      body: map['body'] == null ? null : map['body'] as String,
      id: map['id'] as String,
    );
  }
}

