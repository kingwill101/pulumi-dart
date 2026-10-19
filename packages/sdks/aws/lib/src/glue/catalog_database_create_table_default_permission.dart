// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_create_table_default_permission_principal.dart';

class CatalogDatabaseCreateTableDefaultPermission {
  /// Permissions that are granted to the principal.
  final pulumi.Input<List<String>?>? permissions;
  /// Principal who is granted permissions.. See `principal` Block below.
  final pulumi.Input<CatalogDatabaseCreateTableDefaultPermissionPrincipal?>? principal;

  /// Creates a new [CatalogDatabaseCreateTableDefaultPermission].
  /// [permissions] Permissions that are granted to the principal.
  /// [principal] Principal who is granted permissions.. See `principal` Block below.
  const CatalogDatabaseCreateTableDefaultPermission({
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
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogDatabaseCreateTableDefaultPermissionPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
