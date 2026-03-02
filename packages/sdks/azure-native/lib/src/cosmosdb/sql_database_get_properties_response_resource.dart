// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_restore_parameters_response.dart';

class SqlDatabaseGetPropertiesResponseResource {
  /// A system generated property that specified the addressable path of the collections resource.
  final pulumi.Input<String>? colls;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB SQL database
  final pulumi.Input<String> id;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParametersResponse>? restoreParameters;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;
  /// A system generated property that specifies the addressable path of the users resource.
  final pulumi.Input<String>? users;

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
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParametersResponse, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
      'users': ?users,
    };
  }

  factory SqlDatabaseGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseGetPropertiesResponseResource(
      colls: map['colls'] == null ? null : (map['colls'] as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())).input(),
      rid: (map['rid'] as String).input(),
      ts: (map['ts'] as double).input(),
      users: map['users'] == null ? null : (map['users'] as String).input(),
    );
  }
}

