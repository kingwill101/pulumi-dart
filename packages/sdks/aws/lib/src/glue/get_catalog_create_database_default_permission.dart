// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_create_database_default_permission_principal.dart';

class GetCatalogCreateDatabaseDefaultPermission {
  /// Permissions that are granted to the principal.
  final pulumi.Input<List<String>> permissions;
  /// Principal who is granted permissions. See `principal` below.
  final pulumi.Input<List<GetCatalogCreateDatabaseDefaultPermissionPrincipal>> principals;

  /// Creates a new [GetCatalogCreateDatabaseDefaultPermission].
  /// [permissions] Permissions that are granted to the principal.
  /// [principals] Principal who is granted permissions. See `principal` below.
  const GetCatalogCreateDatabaseDefaultPermission({
    required this.permissions,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'principals': pulumi.Input.mapInputValue<List<GetCatalogCreateDatabaseDefaultPermissionPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<GetCatalogCreateDatabaseDefaultPermissionPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCatalogCreateDatabaseDefaultPermission.fromMap(Map<String, dynamic> map) {
    return GetCatalogCreateDatabaseDefaultPermission(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      principals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCatalogCreateDatabaseDefaultPermissionPrincipal>(map['principals']!, (value) => GetCatalogCreateDatabaseDefaultPermissionPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
