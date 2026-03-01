// ignore_for_file: unused_element, unnecessary_cast

class GetDataLakeSettingsCreateDatabaseDefaultPermission {
  /// List of permissions granted to the principal.
  final List<String> permissions;

  /// Principal who is granted permissions.
  final String principal;

  /// Creates a new [GetDataLakeSettingsCreateDatabaseDefaultPermission].
  /// [permissions] List of permissions granted to the principal.
  /// [principal] Principal who is granted permissions.
  GetDataLakeSettingsCreateDatabaseDefaultPermission({
    required this.permissions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'principal': principal,
    };
  }

  factory GetDataLakeSettingsCreateDatabaseDefaultPermission.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataLakeSettingsCreateDatabaseDefaultPermission(
      permissions: (map['permissions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
