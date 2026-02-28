// ignore_for_file: unused_element, unnecessary_cast


class GetDataLakeSettingsCreateTableDefaultPermission {
  /// List of permissions granted to the principal.
  final List<String> permissions;
  /// Principal who is granted permissions.
  final String principal;

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
      permissions: (map['permissions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}

