// ignore_for_file: unused_element, unnecessary_cast

class DataLakeSettingsCreateDatabaseDefaultPermission {
  /// List of permissions that are granted to the principal. Valid values may include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `DESCRIBE`, and `CREATE_TABLE`. For more details, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final List<String>? permissions;

  /// Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set <span pulumi-lang-nodejs="`principal`" pulumi-lang-dotnet="`Principal`" pulumi-lang-go="`principal`" pulumi-lang-python="`principal`" pulumi-lang-yaml="`principal`" pulumi-lang-java="`principal`">`principal`</span> to `IAM_ALLOWED_PRINCIPALS` and <span pulumi-lang-nodejs="`permissions`" pulumi-lang-dotnet="`Permissions`" pulumi-lang-go="`permissions`" pulumi-lang-python="`permissions`" pulumi-lang-yaml="`permissions`" pulumi-lang-java="`permissions`">`permissions`</span> to `["ALL"]`.
  final String? principal;

  DataLakeSettingsCreateDatabaseDefaultPermission({
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

  factory DataLakeSettingsCreateDatabaseDefaultPermission.fromMap(
      Map<String, dynamic> map) {
    return DataLakeSettingsCreateDatabaseDefaultPermission(
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}
