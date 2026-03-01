// ignore_for_file: unused_element, unnecessary_cast

class CatalogDatabaseFederatedDatabase {
  /// Name of the connection to the external metastore.
  final String? connectionName;

  /// Unique identifier for the federated database.
  final String? identifier;

  /// Creates a new [CatalogDatabaseFederatedDatabase].
  /// [connectionName] Name of the connection to the external metastore.
  /// [identifier] Unique identifier for the federated database.
  CatalogDatabaseFederatedDatabase({this.connectionName, this.identifier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'identifier': ?identifier,
    };
  }

  factory CatalogDatabaseFederatedDatabase.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseFederatedDatabase(
      connectionName: map['connectionName'] == null
          ? null
          : map['connectionName'] as String,
      identifier: map['identifier'] == null
          ? null
          : map['identifier'] as String,
    );
  }
}
