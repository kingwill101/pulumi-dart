/// Type of roles.
enum RoleTypes {
  valueAdmin("Admin"),
  valueReader("Reader"),
  valueManageAdmin("ManageAdmin"),
  valueManageReader("ManageReader"),
  valueDataAdmin("DataAdmin"),
  valueDataReader("DataReader");

  const RoleTypes(this.value);
  final String value;

  static RoleTypes fromValue(String value) {
    for (final item in RoleTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleTypes value: $value');
  }
}

