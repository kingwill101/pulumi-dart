/// Indicates if roles and permissions must be migrated.
enum MigrateRolesAndPermissions {
  true_("True"),
  false_("False");

  const MigrateRolesAndPermissions(this.wireValue);
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
