// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeSettingsCreateDatabaseDefaultPermission {
  /// List of permissions that are granted to the principal. Valid values may include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `DESCRIBE`, and `CREATE_TABLE`. For more details, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final pulumi.Input<List<String>>? permissions;
  /// Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set `principal` to `IAM_ALLOWED_PRINCIPALS` and `permissions` to `["ALL"]`.
  final pulumi.Input<String>? principal;

  /// Creates a new [DataLakeSettingsCreateDatabaseDefaultPermission].
  /// [permissions] List of permissions that are granted to the principal. Valid values may include `ALL`, `SELECT`, `ALTER`, `DROP`, `DELETE`, `INSERT`, `DESCRIBE`, and `CREATE_TABLE`. For more details, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [principal] Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set `principal` to `IAM_ALLOWED_PRINCIPALS` and `permissions` to `["ALL"]`.
  DataLakeSettingsCreateDatabaseDefaultPermission({
    this.permissions,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'principal': ?principal,
    };
  }

  factory DataLakeSettingsCreateDatabaseDefaultPermission.fromMap(Map<String, dynamic> map) {
    return DataLakeSettingsCreateDatabaseDefaultPermission(
      permissions: map['permissions'] == null ? null : ((map['permissions'] as List).cast<String>()).input(),
      principal: map['principal'] == null ? null : (map['principal'] as String).input(),
    );
  }
}

