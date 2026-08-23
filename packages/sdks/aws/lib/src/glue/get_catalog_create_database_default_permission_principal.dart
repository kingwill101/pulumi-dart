// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCreateDatabaseDefaultPermissionPrincipal {
  /// Identifier for the Lake Formation principal.
  final pulumi.Input<String> dataLakePrincipalIdentifier;

  /// Creates a new [GetCatalogCreateDatabaseDefaultPermissionPrincipal].
  /// [dataLakePrincipalIdentifier] Identifier for the Lake Formation principal.
  const GetCatalogCreateDatabaseDefaultPermissionPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': dataLakePrincipalIdentifier,
    };
  }

  factory GetCatalogCreateDatabaseDefaultPermissionPrincipal.fromMap(Map<String, dynamic> map) {
    return GetCatalogCreateDatabaseDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: pulumi.Input.fromValue(map['dataLakePrincipalIdentifier'] as String),
    );
  }
}
