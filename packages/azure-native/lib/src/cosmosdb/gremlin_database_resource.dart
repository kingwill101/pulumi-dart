// ignore_for_file: unused_element, unnecessary_cast

import 'resource_restore_parameters.dart';

/// Cosmos DB Gremlin database resource object
class GremlinDatabaseResource {
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Name of the Cosmos DB Gremlin database
  final String id;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;

  /// Creates a new [GremlinDatabaseResource].
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [id] Name of the Cosmos DB Gremlin database
  /// [restoreParameters] Parameters to indicate the information about the restore
  GremlinDatabaseResource({
    this.createMode,
    required this.id,
    this.restoreParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': ?createMode,
      'id': id,
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
    };
  }

  factory GremlinDatabaseResource.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseResource(
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      id: map['id'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

