// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_create_table_default_permission_principal.dart';

class CatalogDatabaseCreateTableDefaultPermission {
  /// The permissions that are granted to the principal.
  final pulumi.Input<List<String>>? permissions;
  /// The principal who is granted permissions.. See `principal` below.
  final pulumi.Input<CatalogDatabaseCreateTableDefaultPermissionPrincipal>? principal;

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
      'principal': ?pulumi.Input.mapOptionalInputValue<CatalogDatabaseCreateTableDefaultPermissionPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
    };
  }

  factory CatalogDatabaseCreateTableDefaultPermission.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseCreateTableDefaultPermission(
      permissions: map['permissions'] == null ? null : ((map['permissions'] as List).cast<String>()).input(),
      principal: map['principal'] == null ? null : (CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap((map['principal'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

