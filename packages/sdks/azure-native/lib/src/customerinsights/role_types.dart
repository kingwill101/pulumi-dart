import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of roles.
enum RoleTypes implements pulumi.PulumiEnum<String> {
  valueAdmin("Admin"),
  valueReader("Reader"),
  valueManageAdmin("ManageAdmin"),
  valueManageReader("ManageReader"),
  valueDataAdmin("DataAdmin"),
  valueDataReader("DataReader");

  const RoleTypes(this.wireValue);
  @override
  final String wireValue;

  static RoleTypes fromValue(String value) {
    for (final item in RoleTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleTypes value: $value');
  }
}
