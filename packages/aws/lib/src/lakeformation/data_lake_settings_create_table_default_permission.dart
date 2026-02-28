// ignore_for_file: unused_element, unnecessary_cast

class DataLakeSettingsCreateTableDefaultPermission {
  /// List of permissions that are granted to the principal. Valid values may include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, and `DESCRIBE`. For more details, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final List<String>? permissions;

  /// Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set `principal` to `IAM_ALLOWED_PRINCIPALS` and `permissions` to `["ALL"]`.
  final String? principal;

  /// Creates a new [DataLakeSettingsCreateTableDefaultPermission].
  /// [permissions] List of permissions that are granted to the principal. Valid values may include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, and `DESCRIBE`. For more details, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [principal] Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set `principal` to `IAM_ALLOWED_PRINCIPALS` and `permissions` to `["ALL"]`.
  DataLakeSettingsCreateTableDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    final principalValue = principal;
    if (principalValue != null) {
      map['principal'] = principalValue;
    }
    return map;
  }

  factory DataLakeSettingsCreateTableDefaultPermission.fromMap(
      Map<String, dynamic> map) {
    return DataLakeSettingsCreateTableDefaultPermission(
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}
