import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets maintenanceScope of the configuration
enum MaintenanceScope implements pulumi.PulumiEnum<String> {
  host("Host"),
  resource("Resource"),
  oSImage("OSImage"),
  extension("Extension"),
  inGuestPatch("InGuestPatch"),
  sQLDB("SQLDB"),
  sQLManagedInstance("SQLManagedInstance");

  const MaintenanceScope(this.wireValue);
  @override
  final String wireValue;

  static MaintenanceScope fromValue(String value) {
    for (final item in MaintenanceScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceScope value: $value');
  }
}
