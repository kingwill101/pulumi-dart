// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB SQL storedProcedure resource object
class SqlStoredProcedureResource {
  /// Body of the Stored Procedure
  final pulumi.Input<String?>? body;
  /// Name of the Cosmos DB SQL storedProcedure
  final pulumi.Input<String> id;

  /// Creates a new [SqlStoredProcedureResource].
  /// [body] Body of the Stored Procedure
  /// [id] Name of the Cosmos DB SQL storedProcedure
  const SqlStoredProcedureResource({
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
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
