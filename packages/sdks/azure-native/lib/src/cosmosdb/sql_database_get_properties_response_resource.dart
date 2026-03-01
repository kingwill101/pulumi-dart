// ignore_for_file: unused_element, unnecessary_cast

import 'resource_restore_parameters_response.dart';

class SqlDatabaseGetPropertiesResponseResource {
  /// A system generated property that specified the addressable path of the collections resource.
  final String? colls;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB SQL database
  final String id;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParametersResponse? restoreParameters;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;
  /// A system generated property that specifies the addressable path of the users resource.
  final String? users;

  /// Creates a new [SqlDatabaseGetPropertiesResponseResource].
  /// [colls] A system generated property that specified the addressable path of the collections resource.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB SQL database
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [users] A system generated property that specifies the addressable path of the users resource.
  SqlDatabaseGetPropertiesResponseResource({
    this.colls,
    this.createMode,
    required this.etag,
    required this.id,
    this.restoreParameters,
    required this.rid,
    required this.ts,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colls': ?colls,
      'createMode': ?createMode,
      'etag': etag,
      'id': id,
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'rid': rid,
      'ts': ts,
      'users': ?users,
    };
  }

  factory SqlDatabaseGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseGetPropertiesResponseResource(
      colls: map['colls'] == null ? null : map['colls'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      rid: map['rid'] as String,
      ts: map['ts'] as double,
      users: map['users'] == null ? null : map['users'] as String,
    );
  }
}

