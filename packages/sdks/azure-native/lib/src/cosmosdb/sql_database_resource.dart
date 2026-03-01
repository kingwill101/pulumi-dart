// ignore_for_file: unused_element, unnecessary_cast

import 'resource_restore_parameters.dart';

/// Cosmos DB SQL database resource object
class SqlDatabaseResource {
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Name of the Cosmos DB SQL database
  final String id;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;

  /// Creates a new [SqlDatabaseResource].
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [id] Name of the Cosmos DB SQL database
  /// [restoreParameters] Parameters to indicate the information about the restore
  SqlDatabaseResource({
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

  factory SqlDatabaseResource.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseResource(
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      id: map['id'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

