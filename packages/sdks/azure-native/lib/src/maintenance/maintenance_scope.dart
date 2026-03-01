/// Gets or sets maintenanceScope of the configuration
enum MaintenanceScope {
  host("Host"),
  resource("Resource"),
  oSImage("OSImage"),
  extension("Extension"),
  inGuestPatch("InGuestPatch"),
  sQLDB("SQLDB"),
  sQLManagedInstance("SQLManagedInstance");

  const MaintenanceScope(this.value);
  final String value;

  static MaintenanceScope fromValue(String value) {
    for (final item in MaintenanceScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceScope value: $value');
  }
}

