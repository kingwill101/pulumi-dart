// ignore_for_file: unused_element, unnecessary_cast

import '../catalog_database_create_table_default_permission_principal/catalog_database_create_table_default_permission_principal.dart';

class CatalogDatabaseCreateTableDefaultPermission {
  /// The permissions that are granted to the principal.
  final List<String>? permissions;

  /// The principal who is granted permissions.. See <span pulumi-lang-nodejs="`principal`" pulumi-lang-dotnet="`Principal`" pulumi-lang-go="`principal`" pulumi-lang-python="`principal`" pulumi-lang-yaml="`principal`" pulumi-lang-java="`principal`">`principal`</span> below.
  final CatalogDatabaseCreateTableDefaultPermissionPrincipal? principal;

  CatalogDatabaseCreateTableDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue.toMap();
    }
    return map;
  }

  factory CatalogDatabaseCreateTableDefaultPermission.fromMap(
      Map<String, dynamic> map) {
    return CatalogDatabaseCreateTableDefaultPermission(
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
      principal: map['principal'] == null
          ? null
          : CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap(
              (map['principal'] as Map).cast<String, dynamic>()),
    );
  }
}
