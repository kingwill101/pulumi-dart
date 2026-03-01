// ignore_for_file: unused_element, unnecessary_cast

import 'resource_restore_parameters_response.dart';

class GremlinDatabaseGetPropertiesResponseResource {
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB Gremlin database
  final String id;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParametersResponse? restoreParameters;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

  /// Creates a new [GremlinDatabaseGetPropertiesResponseResource].
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Gremlin database
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  GremlinDatabaseGetPropertiesResponseResource({
    this.createMode,
    required this.etag,
    required this.id,
    this.restoreParameters,
    required this.rid,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': ?createMode,
      'etag': etag,
      'id': id,
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'rid': rid,
      'ts': ts,
    };
  }

  factory GremlinDatabaseGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseGetPropertiesResponseResource(
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      rid: map['rid'] as String,
      ts: map['ts'] as double,
    );
  }
}

