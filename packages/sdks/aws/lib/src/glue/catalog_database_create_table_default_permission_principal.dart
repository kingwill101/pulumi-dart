// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogDatabaseCreateTableDefaultPermissionPrincipal {
  /// An identifier for the Lake Formation principal.
  final pulumi.Input<String>? dataLakePrincipalIdentifier;

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

  factory CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap(
    Map<String, dynamic> map,
  ) {
    return CatalogDatabaseCreateTableDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: (() {
        final guardedValue = map['dataLakePrincipalIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
