// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogCreateDatabaseDefaultPermissionPrincipal {
  /// Identifier for the Lake Formation principal.
  final pulumi.Input<String?>? dataLakePrincipalIdentifier;

  /// Creates a new [CatalogCreateDatabaseDefaultPermissionPrincipal].
  /// [dataLakePrincipalIdentifier] Identifier for the Lake Formation principal.
  const CatalogCreateDatabaseDefaultPermissionPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': ?dataLakePrincipalIdentifier,
    };
  }

  factory CatalogCreateDatabaseDefaultPermissionPrincipal.fromMap(Map<String, dynamic> map) {
    return CatalogCreateDatabaseDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: (() { final guardedValue = map['dataLakePrincipalIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
