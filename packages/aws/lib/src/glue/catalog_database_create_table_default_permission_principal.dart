// ignore_for_file: unused_element, unnecessary_cast


class CatalogDatabaseCreateTableDefaultPermissionPrincipal {
  /// An identifier for the Lake Formation principal.
  final String? dataLakePrincipalIdentifier;

  /// Creates a new [CatalogDatabaseCreateTableDefaultPermissionPrincipal].
  /// [dataLakePrincipalIdentifier] An identifier for the Lake Formation principal.
  CatalogDatabaseCreateTableDefaultPermissionPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': ?dataLakePrincipalIdentifier,
    };
  }

  factory CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseCreateTableDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: map['dataLakePrincipalIdentifier'] == null ? null : map['dataLakePrincipalIdentifier'] as String,
    );
  }
}

