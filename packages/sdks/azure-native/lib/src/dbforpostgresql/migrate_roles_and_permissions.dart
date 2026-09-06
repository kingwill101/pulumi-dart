import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if roles and permissions must be migrated.
enum MigrateRolesAndPermissions implements pulumi.PulumiEnum<String> {
  true_("True"),
  false_("False");

  const MigrateRolesAndPermissions(this.wireValue);
  @override
  final String wireValue;

  static MigrateRolesAndPermissions fromValue(String value) {
    for (final item in MigrateRolesAndPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrateRolesAndPermissions value: $value');
  }
}
