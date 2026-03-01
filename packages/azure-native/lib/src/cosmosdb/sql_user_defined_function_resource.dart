// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB SQL userDefinedFunction resource object
class SqlUserDefinedFunctionResource {
  /// Body of the User Defined Function
  final String? body;
  /// Name of the Cosmos DB SQL userDefinedFunction
  final String id;

  /// Creates a new [SqlUserDefinedFunctionResource].
  /// [body] Body of the User Defined Function
  /// [id] Name of the Cosmos DB SQL userDefinedFunction
  SqlUserDefinedFunctionResource({
    this.body,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'id': id,
    };
  }

  factory SqlUserDefinedFunctionResource.fromMap(Map<String, dynamic> map) {
    return SqlUserDefinedFunctionResource(
      body: map['body'] == null ? null : map['body'] as String,
      id: map['id'] as String,
    );
  }
}

