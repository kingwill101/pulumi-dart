// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataLakeSettingsCreateTableDefaultPermission {
  /// List of permissions granted to the principal.
  final pulumi.Input<List<String>> permissions;
  /// Principal who is granted permissions.
  final pulumi.Input<String> principal;

  /// Creates a new [GetDataLakeSettingsCreateTableDefaultPermission].
  /// [permissions] List of permissions granted to the principal.
  /// [principal] Principal who is granted permissions.
  GetDataLakeSettingsCreateTableDefaultPermission({
    required this.permissions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'principal': principal,
    };
  }

  factory GetDataLakeSettingsCreateTableDefaultPermission.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsCreateTableDefaultPermission(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

