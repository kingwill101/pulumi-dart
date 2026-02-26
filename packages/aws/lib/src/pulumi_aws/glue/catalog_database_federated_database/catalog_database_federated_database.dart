// ignore_for_file: unused_element, unnecessary_cast

class CatalogDatabaseFederatedDatabase {
  /// Name of the connection to the external metastore.
  final String? connectionName;

  /// Unique identifier for the federated database.
  final String? identifier;

  CatalogDatabaseFederatedDatabase({
    this.connectionName,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionNameValue = connectionName;
    if (connectionNameValue != null) {
      map['connectionName'] = connectionNameValue;
    }
    final identifierValue = identifier;
    if (identifierValue != null) {
      map['identifier'] = identifierValue;
    }
    return map;
  }

  factory CatalogDatabaseFederatedDatabase.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseFederatedDatabase(
      connectionName: map['connectionName'] == null
          ? null
          : map['connectionName'] as String,
      identifier:
          map['identifier'] == null ? null : map['identifier'] as String,
    );
  }
}
