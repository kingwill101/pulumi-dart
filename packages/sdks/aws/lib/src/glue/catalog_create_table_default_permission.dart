// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_create_table_default_permission_principal.dart';

class CatalogCreateTableDefaultPermission {
  /// Permissions that are granted to the principal. Valid values include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`.
  final pulumi.Input<List<String>>? permissions;
  /// Principal who is granted permissions. See `principal` below.
  final pulumi.Input<CatalogCreateTableDefaultPermissionPrincipal>? principal;

  /// Creates a new [CatalogCreateTableDefaultPermission].
  /// [permissions] Permissions that are granted to the principal. Valid values include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`.
  /// [principal] Principal who is granted permissions. See `principal` below.
  const CatalogCreateTableDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'principal': ?pulumi.Input.mapOptionalInputValue<CatalogCreateTableDefaultPermissionPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
    };
  }

  factory CatalogCreateTableDefaultPermission.fromMap(Map<String, dynamic> map) {
    return CatalogCreateTableDefaultPermission(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCreateTableDefaultPermissionPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
