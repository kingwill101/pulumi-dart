// ignore_for_file: unused_element, unnecessary_cast

class CatalogDatabaseCreateTableDefaultPermissionPrincipal {
  /// An identifier for the Lake Formation principal.
  final String? dataLakePrincipalIdentifier;

  CatalogDatabaseCreateTableDefaultPermissionPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataLakePrincipalIdentifierValue = dataLakePrincipalIdentifier;
    if (dataLakePrincipalIdentifierValue != null) {
      map['dataLakePrincipalIdentifier'] = dataLakePrincipalIdentifierValue;
    }
    return map;
  }

  factory CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap(
      Map<String, dynamic> map) {
    return CatalogDatabaseCreateTableDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: map['dataLakePrincipalIdentifier'] == null
          ? null
          : map['dataLakePrincipalIdentifier'] as String,
    );
  }
}
