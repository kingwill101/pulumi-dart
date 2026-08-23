// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCreateTableDefaultPermissionPrincipal {
  /// Identifier for the Lake Formation principal.
  final pulumi.Input<String> dataLakePrincipalIdentifier;

  /// Creates a new [GetCatalogCreateTableDefaultPermissionPrincipal].
  /// [dataLakePrincipalIdentifier] Identifier for the Lake Formation principal.
  const GetCatalogCreateTableDefaultPermissionPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': dataLakePrincipalIdentifier,
    };
  }

  factory GetCatalogCreateTableDefaultPermissionPrincipal.fromMap(Map<String, dynamic> map) {
    return GetCatalogCreateTableDefaultPermissionPrincipal(
      dataLakePrincipalIdentifier: pulumi.Input.fromValue(map['dataLakePrincipalIdentifier'] as String),
    );
  }
}
