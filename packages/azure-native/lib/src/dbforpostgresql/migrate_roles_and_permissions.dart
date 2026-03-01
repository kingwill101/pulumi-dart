/// Indicates if roles and permissions must be migrated.
enum MigrateRolesAndPermissions {
  true_("True"),
  false_("False");

  const MigrateRolesAndPermissions(this.value);
  final String value;

  static MigrateRolesAndPermissions fromValue(String value) {
    for (final item in MigrateRolesAndPermissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrateRolesAndPermissions value: $value');
  }
}

