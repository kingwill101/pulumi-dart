// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_restore_parameters.dart';

/// Cosmos DB SQL database resource object
class SqlDatabaseResource {
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;

  /// Name of the Cosmos DB SQL database
  final pulumi.Input<String> id;

  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParameters>? restoreParameters;

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
      'restoreParameters':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceRestoreParameters,
            Map<String, dynamic>
          >(restoreParameters, (value) => value.toMap()),
    };
  }

  factory SqlDatabaseResource.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseResource(
      createMode: (() {
        final guardedValue = map['createMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      restoreParameters: (() {
        final guardedValue = map['restoreParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceRestoreParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
