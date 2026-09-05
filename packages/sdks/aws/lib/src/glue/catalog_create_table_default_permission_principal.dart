// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogCreateTableDefaultPermissionPrincipal {
  /// Identifier for the Lake Formation principal.
  final pulumi.Input<String?>? dataLakePrincipalIdentifier;

  /// Creates a new [CatalogCreateTableDefaultPermissionPrincipal].
  /// [dataLakePrincipalIdentifier] Identifier for the Lake Formation principal.
  const CatalogCreateTableDefaultPermissionPrincipal({
    this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': ?dataLakePrincipalIdentifier,
    };
  }

  factory CatalogCreateTableDefaultPermissionPrincipal.fromMap(Map<String, dynamic> map) {
    return CatalogCreateTableDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: (() { final guardedValue = map['dataLakePrincipalIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
