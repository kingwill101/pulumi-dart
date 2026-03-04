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
      'restoreParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRestoreParametersResponse,
            Map<String, dynamic>
          >(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'ts': ts,
      'users': ?users,
    };
  }

  factory SqlDatabaseGetPropertiesResponseResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlDatabaseGetPropertiesResponseResource(
      colls: (() {
        final guardedValue = map['colls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createMode: (() {
        final guardedValue = map['createMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      restoreParameters: (() {
        final guardedValue = map['restoreParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRestoreParametersResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rid: pulumi.Input.fromValue(map['rid'] as String),
      ts: pulumi.Input.fromValue(map['ts'] as double),
      users: (() {
        final guardedValue = map['users'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
