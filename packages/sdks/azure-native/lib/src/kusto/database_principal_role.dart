/// Database principal role.
enum DatabasePrincipalRole {
  valueAdmin("Admin"),
  valueIngestor("Ingestor"),
  valueMonitor("Monitor"),
  valueUser("User"),
  valueUnrestrictedViewer("UnrestrictedViewer"),
  valueViewer("Viewer");

  const DatabasePrincipalRole(this.wireValue);
  final String wireValue;

  static DatabasePrincipalRole fromValue(String value) {
    for (final item in DatabasePrincipalRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabasePrincipalRole value: $value');
  }
}
