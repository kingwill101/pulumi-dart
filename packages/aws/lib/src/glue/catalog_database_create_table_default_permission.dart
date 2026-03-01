// ignore_for_file: unused_element, unnecessary_cast

import 'catalog_database_create_table_default_permission_principal.dart';

class CatalogDatabaseCreateTableDefaultPermission {
  /// The permissions that are granted to the principal.
  final List<String>? permissions;

  /// The principal who is granted permissions.. See `principal` below.
  final CatalogDatabaseCreateTableDefaultPermissionPrincipal? principal;

  /// Creates a new [CatalogDatabaseCreateTableDefaultPermission].
  /// [permissions] The permissions that are granted to the principal.
  /// [principal] The principal who is granted permissions.. See `principal` below.
  CatalogDatabaseCreateTableDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'principal': ?principal == null ? null : principal!.toMap(),
    };
  }

  factory CatalogDatabaseCreateTableDefaultPermission.fromMap(
    Map<String, dynamic> map,
  ) {
    return CatalogDatabaseCreateTableDefaultPermission(
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
      principal: map['principal'] == null
          ? null
          : CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap(
              (map['principal'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
