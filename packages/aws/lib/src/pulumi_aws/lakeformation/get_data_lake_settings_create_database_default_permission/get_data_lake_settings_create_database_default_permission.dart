// ignore_for_file: unused_element, unnecessary_cast

class GetDataLakeSettingsCreateDatabaseDefaultPermission {
  /// List of permissions granted to the principal.
  final List<String> permissions;

  /// Principal who is granted permissions.
  final String principal;

  GetDataLakeSettingsCreateDatabaseDefaultPermission({
    required this.permissions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissions'] = permissions;
    map['principal'] = principal;
    return map;
  }

  factory GetDataLakeSettingsCreateDatabaseDefaultPermission.fromMap(
      Map<String, dynamic> map) {
    return GetDataLakeSettingsCreateDatabaseDefaultPermission(
      permissions: (map['permissions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
