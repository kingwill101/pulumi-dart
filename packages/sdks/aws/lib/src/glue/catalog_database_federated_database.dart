// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogDatabaseFederatedDatabase {
  /// Name of the connection to the external metastore.
  final pulumi.Input<String>? connectionName;
  /// Unique identifier for the federated database.
  final pulumi.Input<String>? identifier;

  /// Creates a new [CatalogDatabaseFederatedDatabase].
  /// [connectionName] Name of the connection to the external metastore.
  /// [identifier] Unique identifier for the federated database.
  CatalogDatabaseFederatedDatabase({
    this.connectionName,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'identifier': ?identifier,
    };
  }

  factory CatalogDatabaseFederatedDatabase.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseFederatedDatabase(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

