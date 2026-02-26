// ignore_for_file: unused_element, unnecessary_cast

class GetDataLakeSettingsCreateTableDefaultPermission {
  /// List of permissions granted to the principal.
  final List<String> permissions;

  /// Principal who is granted permissions.
  final String principal;

  GetDataLakeSettingsCreateTableDefaultPermission({
    required this.permissions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['permissions'] = permissions;
    map['principal'] = principal;
    return map;
  }

  factory GetDataLakeSettingsCreateTableDefaultPermission.fromMap(
      Map<String, dynamic> map) {
    return GetDataLakeSettingsCreateTableDefaultPermission(
      permissions: (map['permissions'] as List).cast<String>(),
      principal: map['principal'] as String,
    );
  }
}
