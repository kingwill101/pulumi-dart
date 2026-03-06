// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataLakeSettingsCreateDatabaseDefaultPermission {
  /// List of permissions granted to the principal.
  final pulumi.Input<List<String>> permissions;
  /// Principal who is granted permissions.
  final pulumi.Input<String> principal;

  /// Creates a new [GetDataLakeSettingsCreateDatabaseDefaultPermission].
  /// [permissions] List of permissions granted to the principal.
  /// [principal] Principal who is granted permissions.
  const GetDataLakeSettingsCreateDatabaseDefaultPermission({
    required this.permissions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'principal': principal,
    };
  }

  factory GetDataLakeSettingsCreateDatabaseDefaultPermission.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsCreateDatabaseDefaultPermission(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

