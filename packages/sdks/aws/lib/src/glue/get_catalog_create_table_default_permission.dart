// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_create_table_default_permission_principal.dart';

class GetCatalogCreateTableDefaultPermission {
  /// Permissions that are granted to the principal.
  final pulumi.Input<List<String>> permissions;
  /// Principal who is granted permissions. See `principal` below.
  final pulumi.Input<List<GetCatalogCreateTableDefaultPermissionPrincipal>> principals;

  /// Creates a new [GetCatalogCreateTableDefaultPermission].
  /// [permissions] Permissions that are granted to the principal.
  /// [principals] Principal who is granted permissions. See `principal` below.
  const GetCatalogCreateTableDefaultPermission({
    required this.permissions,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'principals': pulumi.Input.mapInputValue<List<GetCatalogCreateTableDefaultPermissionPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<GetCatalogCreateTableDefaultPermissionPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCatalogCreateTableDefaultPermission.fromMap(Map<String, dynamic> map) {
    return GetCatalogCreateTableDefaultPermission(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      principals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogCreateTableDefaultPermissionPrincipal>(map['principals']!, (value) => GetCatalogCreateTableDefaultPermissionPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
