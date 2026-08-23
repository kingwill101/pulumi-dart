// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_create_database_default_permission_principal.dart';

class CatalogCreateDatabaseDefaultPermission {
  /// Permissions that are granted to the principal. Valid values include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`.
  final pulumi.Input<List<String>>? permissions;
  /// Principal who is granted permissions. See `principal` below.
  final pulumi.Input<CatalogCreateDatabaseDefaultPermissionPrincipal>? principal;

  /// Creates a new [CatalogCreateDatabaseDefaultPermission].
  /// [permissions] Permissions that are granted to the principal. Valid values include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`.
  /// [principal] Principal who is granted permissions. See `principal` below.
  const CatalogCreateDatabaseDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'principal': ?pulumi.Input.mapOptionalInputValue<CatalogCreateDatabaseDefaultPermissionPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
    };
  }

  factory CatalogCreateDatabaseDefaultPermission.fromMap(Map<String, dynamic> map) {
    return CatalogCreateDatabaseDefaultPermission(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCreateDatabaseDefaultPermissionPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
